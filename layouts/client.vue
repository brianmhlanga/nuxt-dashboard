<template>
    <main>
        <!-- Import all the site's css files -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/authentication.css" />
        <link rel="stylesheet" href="/css/lineicons.css" />
        <link rel="stylesheet" href="/css/main.css" />
        <link rel="stylesheet" href="/css/primeblocks.css" />
        <link rel="stylesheet" href="/css/theme.css" />
        <link rel="stylesheet" href="/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="/css/buttons.bootstrap4.min.css">
        <link rel="stylesheet" href="/css/keyTable.dataTables.min.css">
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="d-flex align-items-center auth px-0">
                
                <div class="row w-100 mx-0">
                    <Navbar/>
                    <Hero />
                    <slot />
                </div>
            </div>
            <!-- content-wrapper ends -->
            </div>
        </div>
    </main>
</template>

<script>
export default {
   head(){
        return {
            script: [
                {
                  src: "js/bootstrap.bundle.min.js",
                }
            ]
        }
    },
}
</script>

<style>

</style>