<template>
<div id="realm">
    <v-card :height="getHeight()" flat color="transparent">

        <v-container class="pa-10">
            <v-row>
                <v-col cols="12" lg="6" md="6">
                    <div class="title-box">
                        <p class="text-h4">
                            STONNED HIPPIES<br>
                            REALM(SHR)
                        </p>
                    </div>
                    <p class="text-uppercase para-text">
                        The SHR Culture is a collection of 2,222 2D NFTs on the Solana Blockchain. Each Hippie has unique traits and comes with different attributes varying in rarity reflecting these hippies might come off as a rockstar you are a fan of. </p>
                </v-col>
                <v-col cols="12" lg="6" md="6" align="center">
                    <v-img :src="require('~/assets/images/realm.png')" max-width="300"></v-img>
                </v-col>
            </v-row>
        </v-container>
    </v-card>
</div>
</template>

<script>
export default {
    methods: {
        getHeight() {
            return window.innerHeight
        }
    }
}
</script>

<style>
.title-box {
    border-left: 3px solid white;
    margin: 10px 0px;
    padding: 10px;
}
</style>
