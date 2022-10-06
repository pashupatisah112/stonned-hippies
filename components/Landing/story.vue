<template>
    <div id="story">
        <v-card flat color="background"
            style="border-radius: 0 !important; background: linear-gradient(180deg, #64671A 30.6%, #608A5A 94.77%);">
            <v-container class="px-8 px-md-3 py-16">
                <v-row>
                    <v-col cols="12" sm="6">
                        <v-row>
                            <p class="text-h4">
                                <span style="border-bottom:2px solid;">Our </span><span
                                    style="color:#FFDD38;">Story</span>
                            </p>
                        </v-row>
                        <v-row>
                            <p class="para-text">
                                During the late 1960s; the year of the magic bus, there were thousands of
                                ounterculture
                                travellers who made their way to afghanistan. The go-to-teahouse called the sigis in
                                kabul was the haven for those who honored music and this is where the se seven
                                hippies
                                met and instantly got connected through their love for music.
                            </p>
                        </v-row>
                    </v-col>
                    <v-col cols="3" sm="2">
                        <v-spacer></v-spacer>
                    </v-col>
                    <v-col cols="6" sm="4">
                        <v-img class="image-shadow image-size" max-width="300"
                            :src="require('~/assets/images/story-2.png')">
                        </v-img>
                    </v-col>
                </v-row>
                <div class="pt-16">
                    <v-row justify="center" class="mb-4">
                        <p class="text-h4">Stories</p>
                    </v-row>
                    <v-row class="justify-space-around mb-4">
                        <client-only>
                            <!-- <VueSlickCarousel v-bind="slickSetting"> -->
                            <div v-for="(item, i) in nfts" :key="i">
                                <GalleryStoryCard :galleryId="item.id" :title="item.gallery_name" :image="item.image" />
                            </div>
                            <!-- </VueSlickCarousel> -->
                        </client-only>
                    </v-row>
                    <v-row justify="center">
                        <ReusableBorderButton @click="$router.push('/stories')" ButtonText="View all" />
                    </v-row>
                </div>
            </v-container>
        </v-card>
    </div>
</template>
<script>
export default {
    data() {
        return {
            nfts: [
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
            ],
        }
    },

    // methods: {
    //     getHeight() {
    //         return window.innerHeight
    //     }
    // }
}
</script>

<style>
.title-box {
    border-left: 3px solid white;
    margin: 10px 0px;
    padding: 10px;
}
</style>
