import { useAuthStore } from "../stores/auth";


export default defineNuxtRouteMiddleware (async (to, from) => {
  const authStore = useAuthStore();

  const isValid: any = await authStore.me();

  if(isValid.success === false){
   
    // navigateTo({ path: '/search' })
    // navigateTo('/home');
     return
  }
  if(isValid.user_role === "INVESTOR") {
    console.log("redirecting to investor page")
    return navigateTo('/investor');
   }
   if (isValid.user_role === "ADMIN") {
    console.log("redirecting to admin page")
    return navigateTo('admin')
   }
   if (isValid.user_role === "BUSINESS") {
    return navigateTo('/venture')
   }
});

