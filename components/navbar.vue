<template>
    <div class="surface-overlay px-6 shadow-2 flex justify-content-between relative lg:static" style="min-height: 84px;">
        <div class="l10sdlqs dir dir-ltr">Dzimba Hub</div>
    <a class="cursor-pointer block lg:hidden align-self-center text-700 mt-1 p-ripple" data-pd-ripple="true" data-pd-styleclass="true">
        <i class="pi pi-bars text-4xl"></i>
        <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
    </a>
    <div class="flex-grow-1 justify-content-between hidden lg:flex absolute lg:static w-full surface-overlay left-0 top-100 z-1 shadow-2 lg:shadow-none">
        <ul class="list-none p-0 m-0 flex select-none flex-column lg:flex-row">
        <li @click="navigateTo('/')">
            <a class="flex px-6 p-3 h-full lg:px-3 lg:py-2 align-items-center text-600 border-left-2 lg:border-bottom-2 lg:border-left-none border-transparent hover:border-blue-500 font-medium cursor-pointer transition-colors transition-duration-150 p-ripple" data-pd-ripple="true">
            <i class="pi pi-home mr-2"></i>
            <span>Home</span>
            <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
            </a>
        </li>
       
        </ul>
    </div>
    </div>
</template>
<script setup lang="ts">
import { useAuthStore } from '@/stores/auth';
import { useToast } from 'primevue/usetoast';
import { storeToRefs } from "pinia";

const authStore = useAuthStore();
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
<style>
.l10sdlqs.dir.dir-ltr {
    padding-top: 23px;
}
</style>