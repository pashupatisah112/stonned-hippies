<template>
    <div>
        <v-img class="shippie_img" :src="require('~/assets/images/story.png')" :height="getHeight('adjust')">
            <v-container>
                <v-row class="py-16">
                    <v-col cols="9" lg="8" md="6" class="my-lg-16 py-lg-16 px-lg-16">
                        <p class="text-md-h4 text-h5 font-weight-bold mb-4">Shippie Expedition</p>
                        <p class=" mb-8">Service that allows to verify users and to prevent fraud. it is based on
                            blockchain technology as a tool for protecting and validating personal data
                            of internet users.</p>
                        <ReusableGradientButton ButtonText="Connect Wallet" />
                    </v-col>
                </v-row>
                <v-row class="scroll-down">
                    <v-icon class="pa-1 mx-auto" @click="scrollTo"
                        style="background:#62891D; border-radius: 50%; cursor: pointer;">
                        mdi-arrow-down</v-icon>
                </v-row>
            </v-container>
        </v-img>
        <div id="section-explore" class="pa-16" style="background: linear-gradient(180deg, #7D8662 0%, #94958E 100%);">
            <v-container>
                <v-row justify="center" class="my-4">
                    <v-col cols="12" class="text-center">
                        <p class="text-h4 text-bold">Explore</p>
                    </v-col>
                </v-row>
                <v-row justify="space-around">
                    <div v-for="(item, i) in explore" :key="i">
                        <GalleryExploreCard :galleryId="item.id" :title="item.gallery_name" :image="item.image" />
                    </div>
                </v-row>
                <v-row class="my-8" justify="center">
                    <!-- <DialogShippieApprove /> -->
                    <!-- <v-dialog v-model="dialog" persistent max-width="560">
                        <template v-slot:activator="{ on, attrs }">
                            <v-row justify="space-around">
                                <div v-for="(item, i) in explore" :key="i" v-bind="attrs" v-on="on">
                                    <GalleryExploreCard :galleryId="item.id" :title="item.gallery_name"
                                        :image="item.image" />
                                </div>
                            </v-row>
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
                                        be
                                        locked for 30
                                        days &
                                        will
                                        be activate after
                                        onwards. Click on Approve to confirm.</v-card-text>
                                </v-col>
                                <v-card-actions class="ml-auto">
                                    <v-btn class="mr-4 px-4" text @click="dialog = false"
                                        style="background: rgba(178, 191, 197, 0.75); box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.15);">
                                        Cancel
                                    </v-btn>
                                    <v-btn class="px-4" text @click="dialog = false"
                                        style="background: #DA473E; box-shadow: 0px 4px 4px 2px rgba(0, 0, 0, 0.15);">
                                        Approve
                                    </v-btn>
                                </v-card-actions>
                            </v-row>
                        </v-card>
                    </v-dialog> -->
                </v-row>
            </v-container>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            dialog: false,

            explore: [
                {
                    id: '1',
                    gallery_name: 'abc',
                    image: require('~/assets/images/2.png'),
                },
                {
                    id: '2',
                    gallery_name: 'abcd',
                    image: require('~/assets/images/3.png'),
                },
                {
                    id: '3',
                    gallery_name: 'abcde',
                    image: require('~/assets/images/1.png'),
                }
            ]
        }
    },
    methods: {
        getHeight(value) {
            // if (value == 'adjust') {
            //     return window.innerHeight - 60

            // } else {
            //     return window.innerHeight
            // }
        },
        scrollTo() {
            document.getElementById("section-explore").scrollIntoView()
        }
    }
}
</script>

<style lang="css">
.shippie_img .v-image__image {
    opacity: 0.6;
}

.scroll-down {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 20px;
    margin: auto;
    transform: translateX(50%, 50%);
}
</style>