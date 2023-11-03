<template>
    <NuxtLayout name="client">
        <div class="surface-section px-4 py-8 md:px-6 lg:px-8">
        <div class="grid">
            <div class="col-12 md:col-6">
            <div class="p-fluid pr-0 md:pr-6">
                <div class="field">
                <label for="name" class="font-medium">Property Name</label>
                <input v-model="name" class="p-inputtext p-component py-3 px-2 text-lg" data-pc-name="inputtext" data-pc-section="root" id="name" type="text">
                </div>
                <div class="field">
                <label for="email" class="font-medium">Number of Rooms</label>
                <input v-model="rooms" class="p-inputtext p-component py-3 px-2 text-lg" data-pc-name="inputtext" data-pc-section="root" id="email" type="number">
                </div>
                <div class="field">
                <label for="company" class="font-medium">Image URL</label>
                <input v-model="image_url" class="p-inputtext p-component py-3 px-2 text-lg" data-pc-name="inputtext" data-pc-section="root" id="company" type="text">
                </div>
                <div class="field">
                <label for="company" class="font-medium">Price</label>
                <input v-model="price" class="p-inputtext p-component py-3 px-2 text-lg" data-pc-name="inputtext" data-pc-section="root" id="company" type="text">
                </div>
                <div class="field">
                <label for="message" class="font-medium">Property Description</label>
                <textarea v-model="description" class="p-inputtextarea p-inputtext p-component p-inputtextarea-resizable py-3 px-2 text-lg" data-pc-name="textarea" data-pc-section="root" id="message" rows="6" style="height: 162px; overflow: hidden;"></textarea>
                </div>
                <button @click="addProperty()" class="p-button p-component w-auto" type="button" aria-label="Send Message" data-pc-name="button" data-pc-section="root" data-pd-ripple="true">
                <span class="p-button-icon p-button-icon-left pi pi-send" data-pc-section="icon"></span>
                <span class="p-button-label" data-pc-section="label">Add Property</span>
                <!---->
                <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
                </button>
            </div>
            </div>
            <div class="col-12 md:col-6 bg-no-repeat bg-right-bottom" style="background-image: url(&quot;/images/blocks/contact/contact-1.png&quot;);">
            <div class="text-900 text-2xl font-medium mb-6">Add your property</div>
            <div class="text-700 line-height-3 mb-6">Properties</div>
            <a class="inline-flex align-items-center text-blue-600 font-bold no-underline cursor-pointer">
                <span class="mr-3">View Address on Google Maps</span>
                <i class="pi pi-arrow-right"></i>
            </a>
            <ul class="list-none p-0 m-0 mt-6 text-700">
                <li class="flex align-items-center mb-3">
                <i class="pi pi-phone mr-2"></i>
                <span>+123456789</span>
                </li>
                <li class="flex align-items-center mb-3">
                <i class="pi pi-twitter mr-2"></i>
                <span>@properties</span>
                </li>
                <li class="flex align-items-center">
                <i class="pi pi-inbox mr-2"></i>
                <span>contact@properties.com</span>
                </li>
            </ul>
            </div>
        </div>
        <DataTable :value="properties" tableStyle="min-width: 50rem">
            <template #header>
                <div class="flex flex-wrap align-items-center justify-content-between gap-2">
                    <span class="text-xl text-900 font-bold">My Properties</span>
                    <Button icon="pi pi-refresh" rounded raised />
                </div>
            </template>
            <Column field="name" header="Name"></Column>
            <Column header="Image">
                <template #body="slotProps">
                    <img :src="`${slotProps.data.image_url}`" class="w-6rem shadow-2 border-round" />
                </template>
            </Column>
            <Column field="price" header="Price">
                <template #body="slotProps">
                    {{ formatCurrency(slotProps.data.price) }}
                </template>
            </Column>
            <Column field="rooms" header="Number of Rooms"></Column>
            <Column field="rating" header="Reviews">
                <template #body="slotProps">
                    {{ slotProps.data.rooms }}
                </template>
            </Column>
            <Column field="description" header="Description">
                <template #body="slotProps">
                    {{ slotProps.data.description }}
                </template>
            </Column>
            <Column header="Status">
                <template #body="slotProps">
                    <Tag :value="slotProps.data.property_status"/>
                </template>
            </Column>
            <Column header="Actions">
                <template #body="slotProps">
                    <SplitButton
                        icon="pi pi-ellipsis-v"
                        :model="[
                            { label: 'Delete Listing', icon: 'pi pi-fw pi-eye', command: () => deleteListing(slotProps.data?.id) }
                        ]"
                    ></SplitButton>
                </template>
            </Column>
             </DataTable>
        </div>
    </NuxtLayout>
  </template>
  
  <script setup lang="ts">
    import { storeToRefs } from "pinia";
    import { useToast } from "primevue/usetoast";
    import { useAuthStore } from "~/stores/auth";
    definePageMeta({
        middleware: ["auth"]
    });
    const authStore = useAuthStore()
    const resetDialog = ref(false)
    const toast = useToast();
    const isLoading = ref(false);
    const name = ref();
    const description = ref();
    const rooms = ref();
    const image_url = ref();
    const price = ref();
    const owner = storeToRefs(authStore).user_id;
    const properties = ref()
    const addProperty = async () => {
       let data = {
            owner_id: owner.value,
            name: name.value,
            description: description.value,
            rooms: rooms.value,
            image_url: image_url.value,
            price: price.value
        }
        let result = await authStore.addProperty(data)
        if (result.success) {
          await toast.add({ severity: 'success', summary: 'Success', detail: 'Succesfully Added', life: 3000 });
          let results = await authStore.myProperties(data).then((datdd:any) => {
            console.log(datdd)
            properties.value = datdd?.data?.properties
          })
        }
    }
    const formatCurrency = (value: any) => {
    return value.toLocaleString('en-US', { style: 'currency', currency: 'ZAR' });
    };
    const deleteListing = async (my_id: any) => {
        let data = {
            id: my_id
        }
          let results = await authStore.deleteProperty(data).then( async(datdd:any) => {
            toast.add({ severity: 'success', summary: 'Success', detail: 'Succesfully Deleted', life: 3000 });
            let data = {
            id: owner.value
        }
          let results = await authStore.myProperties(data).then((datdd:any) => {
            console.log(datdd)
            properties.value = datdd?.data?.properties
          })
          })
    }
    onMounted( async () => {
        let data = {
            id: owner.value
        }
          let results = await authStore.myProperties(data).then((datdd:any) => {
            console.log(datdd)
            properties.value = datdd?.data?.properties
          })
    })
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