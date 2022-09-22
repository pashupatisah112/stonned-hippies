<template>
    <div>
        <v-card color="transparent">
            <div class="outer-card">
                <div class="inner-card my-3 rounded-lg pa-6 text-center" style="background: #fff;">
                    <v-img :src="image" :lazy-src="image" class="mx-auto rounded-lg" width="220" height="220">
                        <template v-slot:placeholder>
                            <v-row class="fill-height ma-0" align="center" justify="center">
                                <v-progress-circular indeterminate color="grey lighten-5"></v-progress-circular>
                            </v-row>
                        </template>
                    </v-img>
                    <v-row class="px-3" no-gutter>
                        <small class="my-6" style="color:#7E7373; font-weight: bold;">3D ape{{user}}</small>
                        <v-spacer></v-spacer>
                        <small class="mr-1">{{favourites}}</small>
                        <v-icon color="black" small>mdi-heart-outline</v-icon>
                    </v-row>
                    <v-card-subtitle class="my-2 text-center rounded-pill"
                        style="color:black; font-weight:bold; border: 1px solid blue">
                        {{title.slice(0,20)}}<span v-if="title.length>20">..</span>
                    </v-card-subtitle>
                </div>
            </div>
        </v-card>
    </div>
</template>

<script>
export default {
    props: {
        galleryId: {
            type: String,
            required: true
        },
        title: {
            type: String,
            required: true
        },
        image: {
            type: String,
            required: true
        },
    }
}
</script>

<style lang="css">
.card_img .v-image__image {
    opacity: 1;
}
</style>