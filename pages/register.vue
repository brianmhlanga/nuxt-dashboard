<template>
    <NuxtLayout name="blank">

        <div class="surface-card p-4 shadow-2 border-round w-full lg:w-6" style="margin: auto;">
        <div class="text-center mb-5">
            <img src="https://blocks.primevue.org/images/blocks/logos/hyper.svg" alt="Image" height="50" class="mb-3">
            <div class="text-900 text-3xl font-medium mb-3">Welcome to Listings</div>
            <span class="text-600 font-medium line-height-3">Don't have an account?</span>
            <a class="font-medium no-underline ml-2 text-blue-500 cursor-pointer">Create today!</a>
        </div>
        <div>
            <InlineMessage v-if="isValid === false && password" severity="warn">Password is weak. Include at least one uppercase, one lowercase, one numeric and minimum 8 Characters</InlineMessage>
            <InlineMessage v-if="password && confirm_password && password !== confirm_password" severity="warn">Password do not match</InlineMessage>
            <InlineMessage v-if="email && !validEmail" severity="warn">Invalid email address</InlineMessage>
            <label for="email1" class="block text-900 font-medium mb-2">Email</label>
            <input @keyup="checkEmailValidity()" v-model="email" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="email1" type="text" placeholder="Email address">
            <label for="email1" class="block text-900 font-medium mb-2">Username</label>
            <input v-model="username" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="email1" type="text" placeholder="Username">
            <label for="email1" class="block text-900 font-medium mb-2">First Name</label>
            <input v-model="name" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="email1" type="text" placeholder="First Name">
            <label for="email1" class="block text-900 font-medium mb-2">Last Name</label>
            <input v-model="surname" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="email1" type="text" placeholder="Surname">
            <label for="password1" class="block text-900 font-medium mb-2">Password</label>
            <input @keyup="validatePassword(password)" v-model="password" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="password1" type="password" placehoder="Password">
            <label for="password1" class="block text-900 font-medium mb-2">Confirm Password</label>
            <input v-model="confirm_password" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="password1" type="password" placehoder="Password">
            
            <div class="flex align-items-center justify-content-between mb-6">
            <div class="flex align-items-center">
                <div class="p-checkbox p-component mr-2" data-pc-name="checkbox" data-pc-section="root" id="rememberme1">
                <div class="p-hidden-accessible" data-pc-section="hiddeninputwrapper" data-p-hidden-accessible="true">
                    <input type="checkbox" data-pc-section="hiddeninput">
                </div>
                <div class="p-checkbox-box" data-pc-section="input" data-p-highlight="false" data-p-disabled="false" data-p-focused="false">
                    <!---->
                </div>
                </div>
                <label for="rememberme1">Remember me</label>
            </div>
            <a class="font-medium no-underline ml-2 text-blue-500 text-right cursor-pointer">Forgot password?</a>
            </div>
            <Button :disabled="password !== confirm_password || confirm_password === '' || !validEmail || !isValid" :class="{ 'p-button-lg p-button-secondary first': true, 'p-button-disabled first': password !== confirm_password || confirm_password === '' || !validEmail }"  @click="register()" label="Register"  />
        </div>
        </div>
    </NuxtLayout>
</template>

<script setup lang="ts">
    import { storeToRefs } from "pinia";
    import { useToast } from "primevue/usetoast";
    import { useAuthStore } from "~/stores/auth";

    definePageMeta({
        middleware: ["not-auth"]
    });

    const authStore = useAuthStore()
    const resetDialog = ref(false)
    const passwordRegex = ref(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/);
    const toast = useToast();
    const isLoading = ref(false);
    const email = ref()
    const username = ref()
    const name = ref()
    const title = ref()
    const surname = ref()
    const password = ref()
    const confirm_password = ref()
    const validEmail = ref(true)
    const isValid = ref(false)
    const validatePassword = (password:any) => {
       isValid.value = passwordRegex.value.test(password);
       return isValid.value
    }
    const  checkEmailValidity =async () => {
    
    // Use a regular expression to check the email format
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    validEmail.value = emailRegex.test(email.value);

    }

    const register = async () => {
       let data = {
            email: email.value,
            username: username.value,
            name: name.value,
            surname: surname.value,
            password: password.value
        }
        let result = await authStore.register(data)
        if (result.success) {
          await toast.add({ severity: 'success', summary: 'Success', detail: 'Succesfully Registred', life: 3000 });
            navigateTo('/login')
        }
    }
</script>

<style>

img.logo {
    width: 150px !important;
    height: auto !important;
    margin: auto !important;
}
.brand-logo {
    text-align: center;
}
</style>