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
                    <v-row class="justify-center justify-md-space-between px-12  ">
                        <client-only>
                            <!-- <VueSlickCarousel v-bind="slickSetting"> -->
                            <div v-for="(item, i) in nfts" :key="i">
                                <GalleryStoryCard :galleryId="item.id" :title="item.gallery_name" :image="item.image"
                                    :text=item.text />
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
                    gallery_name: 'Fernley',
                    image: require('~/assets/images/nfts/fernley.png'),
                    text: ''
                    // text: 'I am Fernly. I like to hike when I am high. And by hiking, I don’t mean plain walking. I have to climb up and descend down and be in the woods.'
                },
                {
                    id: '2',
                    gallery_name: 'Jadeend',
                    image: require('~/assets/images/nfts/Jadeend.png'),
                    text: ''
                    // text: 'I have drinks stocked at home, in the shoe cabinet, under the bed, inside the junkbin, in my bag, pocket, everywhere literally. Despite that, I still have to go out and drink. The walls in my room confine me.'
                },
                {
                    id: '3',
                    gallery_name: 'Pearsyd',
                    image: require('~/assets/images/nfts/Pearsyd.png'),
                    text: ''
                    // text: ' I come with a warning! “Do not come near me” It is because my entire body especially my hair reeks of cheap alcohol and grass. but let me also tell you that these are not cheap alcohol that you smell off me.'
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
