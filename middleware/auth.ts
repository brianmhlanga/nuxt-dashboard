import { useAuthStore } from "../stores/auth";

export default defineNuxtRouteMiddleware (async (to, from) => {
  const authStore = useAuthStore();
  const isValid: any = await authStore.me();
  console.log("ghghghghghghg",isValid)
  console.log("ghghghghgh",isValid?.user.success)
  if(isValid?.user?.success === false){

    return navigateTo('/login', {

      external: false

    })
  }
});