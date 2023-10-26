import { useAuthStore } from "../stores/auth";

export default defineNuxtRouteMiddleware(async (to, from) => {
  const authStore = useAuthStore();
  const isValid = await authStore.me();


   console.log("tessssssssssssssssssssssssst",isValid)
  if (!isValid.success) {
    // Redirect to default page if user is not authenticated
    return navigateTo('/', { external: true });}
   if(isValid.user_role === "INVESTOR") {
    console.log("redirecting to investor page")
    return navigateTo('/investor');
   }
   if (isValid.user_role === "ADMIN") {
    console.log("redirecting to admin page")
    return navigateTo('admin')
   }
});
