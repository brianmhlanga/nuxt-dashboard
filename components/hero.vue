<template>
    <div class="grid grid-nogutter surface-section text-800">
    <div class="col-12 md:col-6 p-6 text-center md:text-left flex align-items-center">
        <section>
        <span class="block text-6xl font-bold mb-1">Amazing Places To Rent</span>
        <div class="text-6xl text-primary font-bold mb-3">At amazing prices</div>
        <p class="mt-0 mb-4 text-700 line-height-3">From as little as $10/night you will find some of the best deals in night rentals here!!!</p>
        <button @click="logout()" v-if="session === 'CLIENT' || session === 'ADMIN'" class="p-button p-component mr-3 p-button-raised" type="button" aria-label="Learn More" data-pc-name="button" data-pc-section="root" data-pd-ripple="true">
            <!---->
            <span class="p-button-label" data-pc-section="label">Log Out</span>
            <!---->
            <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
        </button>
        <button @click="navigateTo('/login')" v-else class="p-button p-component mr-3 p-button-raised" type="button" aria-label="Learn More" data-pc-name="button" data-pc-section="root" data-pd-ripple="true">
            <!---->
            <span class="p-button-label" data-pc-section="label">Log In</span>
            <!---->
            <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
        </button>
        <button @click="navigateTo('/admin')" v-if="session === 'ADMIN'" class="p-button p-component mr-3 p-button-raised" type="button" aria-label="Learn More" data-pc-name="button" data-pc-section="root" data-pd-ripple="true">
            <!---->
            <span class="p-button-label" data-pc-section="label">Admin Dashboard</span>
            <!---->
            <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
        </button>
        <button @click="navigateTo('/addproperties')" class="p-button p-component p-button-outlined" type="button" aria-label="Live Demo" data-pc-name="button" data-pc-section="root" data-pd-ripple="true">
            <!---->
            <span class="p-button-label" data-pc-section="label">Add Properties</span>
            <!---->
            <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
        </button>
        </section>
    </div>
    <div class="col-12 md:col-6 overflow-hidden">
        <img src="https://a0.muscache.com/im/pictures/6197cfa9-a7e4-404f-a6e0-b22085a8d2db.jpg?im_w=1200" alt="Image" class="md:ml-auto block md:h-full" style="clip-path: polygon(8% 0px, 100% 0%, 100% 100%, 0px 100%);">
    </div>
    </div>
</template>
<script setup lang="ts">
import { useAuthStore } from '@/stores/auth';
import { useToast } from 'primevue/usetoast';
import { storeToRefs } from "pinia";


const authStore = useAuthStore();
const session = storeToRefs(authStore).profile
const logout = async () => {
  const result = await authStore.logout();
  
  if(result.success){
    window.location.href = "/login";
    if(!process.server){
      localStorage.userData = "{}";
    }
  }
}
</script>