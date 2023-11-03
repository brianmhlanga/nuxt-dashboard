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
            <label for="email1" class="block text-900 font-medium mb-2">Email</label>
            <input v-model="email" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="email1" type="text" placeholder="Email address">
            <label for="email1" class="block text-900 font-medium mb-2">Username</label>
            <input v-model="username" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="email1" type="text" placeholder="Username">
            <label for="email1" class="block text-900 font-medium mb-2">First Name</label>
            <input v-model="name" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="email1" type="text" placeholder="First Name">
            <label for="email1" class="block text-900 font-medium mb-2">Last Name</label>
            <input v-model="surname" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="email1" type="text" placeholder="Surname">
            <label for="password1" class="block text-900 font-medium mb-2">Password</label>
            <input v-model="password" class="p-inputtext p-component w-full mb-3" data-pc-name="inputtext" data-pc-section="root" id="password1" type="password" placehoder="Password">
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
            <button  @click="register()" class="p-button p-component w-full" type="button" aria-label="Sign In" data-pc-name="button" data-pc-section="root" data-pd-ripple="true">
            <span class="p-button-icon p-button-icon-left pi pi-user" data-pc-section="icon"></span>
            <span class="p-button-label" data-pc-section="label">Sign In</span>
            <!---->
            <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
            </button>
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
    const toast = useToast();
    const isLoading = ref(false);
    const email = ref()
    const username = ref()
    const name = ref()
    const title = ref()
    const surname = ref()
    const password = ref()

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