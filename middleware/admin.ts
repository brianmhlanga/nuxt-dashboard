import { useAuthStore } from "../stores/auth";


export default defineNuxtRouteMiddleware (async (to, from) => {
  const authStore = useAuthStore();

  const isValid: any = await authStore.me();
  if(isValid.success === false){
    
    // navigateTo({ path: '/search' })
    // navigateTo('/home');
     return navigateTo('/')
  }
  if(isValid.user_role === "ADMIN") {
   
    return 
   }
   if (isValid.user_role === "INVESTOR") {
    return navigateTo('/investor')
   }
   if (isValid.user_role === "BUSINESS") {
    return navigateTo('/venture')
   }
});

