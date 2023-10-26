import { useAuthStore } from "../stores/auth";


export default defineNuxtRouteMiddleware (async (to, from) => {
  const authStore = useAuthStore();

  const isValid: any = await authStore.me();

  console.log("my is valid status",isValid)
  if(isValid.success === false){
    // navigateTo({ path: '/search' })
    // navigateTo('/home');
     return navigateTo('/')
  }
  if(isValid.user_role === "INVESTOR") {
   
    return 
   }
   if (isValid.user_role === "ADMIN") {
    return navigateTo('admin')
   }
   if (isValid.user_role === "BUSINESS") {
    return navigateTo('/venture')
   }
});

