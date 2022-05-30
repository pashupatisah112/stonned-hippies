<template>
<v-app dark style="background: #1a1f00;">
    <client-only>
        <!-- <LayoutAppbar /> -->
        <v-main>
            <Nuxt />
        </v-main>
        <LayoutFooter />
    </client-only>
</v-app>
</template>

<style>
@import url('~/assets/style/main.css');
</style>
