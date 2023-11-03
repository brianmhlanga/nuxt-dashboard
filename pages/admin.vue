<template>
    <NuxtLayout v-if="profile === 'ADMIN'" name="client">
        <div class="surface-section px-4 py-8 md:px-6 lg:px-8">
        <DataTable :value="properties" tableStyle="min-width: 50rem">
            <template #header>
                <div class="flex flex-wrap align-items-center justify-content-between gap-2">
                    <span class="text-xl text-900 font-bold">All Properties</span>
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
                            { label: 'Delete Listing', icon: 'pi pi-fw pi-eye', command: () => deleteListing(slotProps.data?.id) },
                            { label: 'Activate Listing', icon: 'pi pi-fw pi-eye', command: () => activateListing(slotProps.data?.id) },
                            { label: 'DeActivate Listing', icon: 'pi pi-fw pi-eye', command: () => deactivateListing(slotProps.data?.id) }
                        ]"
                    ></SplitButton>
                </template>
            </Column>
             </DataTable>
        </div>
    </NuxtLayout>
    <NuxtLayout v-else name="blank">
        <div>ONLY ADMINSTRATORS ARE ALLOWED TO VIEW THIS PAGE</div>
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
    const profile = storeToRefs(authStore).profile;
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
          let results = await authStore.allProperties(data).then((datdd:any) => {
            console.log(datdd)
            properties.value = datdd?.data?.properties
          })
          })
    }
    const activateListing = async (my_id: any) => {
        let data = {
            id: my_id
        }
          let results = await authStore.activateProperty(data).then( async(datdd:any) => {
            toast.add({ severity: 'success', summary: 'Success', detail: 'Succesfully Activated', life: 3000 });
            let data = {
            id: owner.value
        }
          let results = await authStore.allProperties(data).then((datdd:any) => {
            console.log(datdd)
            properties.value = datdd?.data?.properties
          })
          })
    }
    const deactivateListing = async (my_id: any) => {
        let data = {
            id: my_id
        }
          let results = await authStore.deactivateProperty(data).then( async(datdd:any) => {
            toast.add({ severity: 'success', summary: 'Success', detail: 'Succesfully Deactivated', life: 3000 });
            let data = {
            id: owner.value
        }
          let results = await authStore.allProperties(data).then((datdd:any) => {
            console.log(datdd)
            properties.value = datdd?.data?.properties
          })
          })
    }
    onMounted( async () => {
        let data = {
            id: owner.value
        }
          let results = await authStore.allProperties(data).then((datdd:any) => {
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