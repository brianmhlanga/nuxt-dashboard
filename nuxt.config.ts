import * as dotenv from 'dotenv'


dotenv.config();

export default defineNuxtConfig({
  css: [
    "primevue/resources/themes/lara-light-blue/theme.css",
    'primevue/resources/primevue.css',
        'primeicons/primeicons.css',
        'primevue/resources/primevue.css'
  ],
  modules: [
    '@pinia/nuxt',
    '@nuxtjs/google-fonts',
    '@nuxtjs/color-mode',
    'nuxt-primevue'
  ],
    primevue: {
      usePrimeVue: true,
      options: {},
      importPT: undefined,
      cssLayerOrder: 'tailwind-base, primevue, tailwind-utilities',
      components: {
          prefix: '',
          name: undefined,
          include: "*",
          exclude: undefined
      },
      directives: {
          prefix: '',
          name: undefined,
          include: undefined,
          exclude: undefined
      },
      composables: {
          prefix: '',
          name: undefined,
          include: undefined,
          exclude: undefined
      }
  },
  colorMode: {
    classPrefix: 'theme-',
    classSuffix: ''
  },
  googleFonts: {
    families: {
      'Nunito': true,
    },
  },
  runtimeConfig: {
    DATABASE_URL: process.env.DATABASE_URL,
    JWT_TOKEN_SECRET: process.env.JWT_TOKEN_SECRET,
    EMAIL_HOST: process.env.EMAIL_HOST
  }
})
