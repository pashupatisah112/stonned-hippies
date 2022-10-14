<template>
    <div style="margin-top:100px;">
        <!-- <MintsMint /> -->
        <v-img class="shippie_img" :src="require('~/assets/images/story.png')"
            style="position:relative; min-height: 600px;">
            <!-- <v-container>
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
            </v-container> -->
            <v-container class="center">
                <v-row justify="center" class="mb-12">
                    <p class="title-coming text-h3 text-uppercase font-weight-bold pb-6">coming soon</p>
                </v-row>
                <v-row justify="center" class="mb-12">
                    <p class="text-center" style="font-size: 18px">Watch this space unfold into an adventure of your
                        lifetime. </p>
                </v-row>
                <v-row justify="center">
                    <p class="text-center" style="font-size: 20px; width: 70%;">For the first <span
                            class="text-yellow">222</span> Stoned
                        hippies
                        holders, this Shippie Expedition is only
                        about to get more exhilarating <span style="font-size:30px;">🌻, 🚌, 🚬,
                            🎸</span></p>
                </v-row>
            </v-container>
        </v-img>
        <!-- <div id="section-explore" class="pa-16" style="background: linear-gradient(180deg, #7D8662 0%, #94958E 100%);">
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
                </v-row>
            </v-container>
        </div> -->
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
    opacity: 0.3;
}

.scroll-down {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 20px;
    margin: auto;
    transform: translateX(50%, 50%);
}

.title-coming {
    position: relative;
}

.title-coming:before {
    content: "";
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    width: 80%;
    margin: 0 auto;
    border-bottom: 3px solid #fff
}

.text-yellow {
    color: #FFDD38;
}

.center {
    position: absolute;
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%);
}
</style>