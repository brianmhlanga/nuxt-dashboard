import { useAuthStore } from "../stores/auth";

export default defineNuxtRouteMiddleware (async (to, from) => {
  const authStore = useAuthStore();
  const isValid: any = await authStore.me();
  console.log("ghghghghghghg",isValid)
  console.log("ghghghghgh",isValid?.user.profile)
  if(isValid?.user?.profile !== 'ADMIN'){

    return navigateTo('/login', {

      external: false

    })
  }
});