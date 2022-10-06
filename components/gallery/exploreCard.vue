<template>
    <div>
        <v-card color="transparent">
            <div class="outer-card" style="position:relative;">
                <div class="inner-card my-3 rounded-lg pa-6 text-center" style=" background: #fff;">
                    <v-img v-if="approved ? true : false" class="checkmark"
                        :src="require('~/assets/images/checkmark.svg')" max-width="60"></v-img>
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
                    <v-dialog v-model="dialog" persistent max-width="560">
                        <template v-slot:activator="{ on, attrs }">
                            <div v-bind="attrs" v-on="on">
                                <v-card-subtitle v-if="approved ? true : false"
                                    class="mx-auto my-2 text-center rounded-pill"
                                    style="color:#fff; font-weight:bold; background:#62891D; width:80%; ">
                                    Approved
                                </v-card-subtitle>
                                <v-card-subtitle v-else="approve = false" class="mx-auto my-2 text-center rounded-pill"
                                    style="color:#000; font-weight:bold; border: 1px solid blue;  width:80%;">
                                    {{title.slice(0,20)}}<span v-if="title.length>20">..</span>
                                </v-card-subtitle>
                            </div>
                        </template>
                        <v-card class="py-8" color="#FFF" style="color:#000; position: relative; overflow: hidden;">
                            <v-row class="px-6">
                                <v-col cols="12" sm="9">
                                    <v-card-title class="text-h5 pa-0">
                                        Are you ready for the shippie Expediation?
                                    </v-card-title>
                                </v-col>
                                <v-col cols="12" sm="9" class="mb-4">
                                    <v-card-text class="pa-0" style="color:#9C9C9C;">On Clicking Approved, your NFT will
                                        be locked for 30 days & will be activate after onwards. Click on Approve to
                                        confirm.
                                    </v-card-text>
                                </v-col>
                                <v-card-actions class="ml-auto">
                                    <v-btn class="mr-4 px-4" text @click="dialog = false"
                                        style="background: rgba(178, 191, 197, 0.75); box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.15);">
                                        Cancel
                                    </v-btn>
                                    <v-btn class="px-4" text @click="dialog = false" v-on:click="approved = true"
                                        style="background: #DA473E; box-shadow: 0px 4px 4px 2px rgba(0, 0, 0, 0.15);">
                                        Approve
                                    </v-btn>
                                </v-card-actions>
                            </v-row>
                        </v-card>
                    </v-dialog>
                </div>
            </div>
        </v-card>
    </div>
</template>

<script>
export default {
    data() {
        return {
            dialog: false,
            approved: false
        }
    },
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
    },

    methods: {
        // approved: true
    },
}
</script>

<style lang="css">
.card_img .v-image__image {
    opacity: 1;
}

.checkmark {
    position: absolute;
    top: -22px;
    right: -22px;
    z-index: 1;
}
</style>