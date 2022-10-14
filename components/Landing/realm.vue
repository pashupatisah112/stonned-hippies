<template>
    <div id="realm">
        <!-- <v-card flat color="transparent">>
        </v-card> -->
        <v-card flat color="mistyRose" style="margin-bottom:-1px; border-radius: 0 !important; z-index: 1; ">
            <v-container class="px-8 px-md-3 py-16" style="color: #000;">
                <v-row>
                    <v-col cols="12" sm="6">
                        <v-row class="mb-6">
                            <!-- <p class="title-story text-h4 text-capitalize pb-1" style="width:240px;">
                                Stoned hippies realm(shr)
                            </p> -->
                            <p class="title-story text-h4 text-capitalize pb-1">
                                Stoned hippies realm(shr)
                            </p>
                        </v-row>
                        <v-row>
                            <p class="para-text">
                                Stoned Hippies Realm is a decades-long journey of creating a vibrant community of
                                hippies thriving in the beauty of music, living in peace, puff and positivity. This also
                                means bringing together people who are hippies within their soul that includes people on
                                the verge of paying their last homage, to the rising genz, the digital nomads aka
                                digital hippies, the NFT connoisseurs, those in crypto, web3. This Culture-led project
                                will be a space where all walks of mine come together in tune, spreading the message of
                                love, hope and possibility because we have so much to celebrate.
                            </p>
                        </v-row>
                    </v-col>
                    <v-col cols="3" sm="1">
                        <v-spacer></v-spacer>
                    </v-col>
                    <v-col cols="12" sm="5">
                        <v-card class="pa-4 rounded-lg mx-auto" max-width="300"
                            style="background: linear-gradient(180deg, rgba(0, 0, 0, 0.3) 0%, rgba(54, 49, 49, 0.231) 100%); backdrop-filter: blur(10px);">
                            <v-img class="rounded-lg" :src="require('~/assets/images/nfts/Appleton.png')">
                            </v-img>
                        </v-card>
                    </v-col>
                </v-row>
            </v-container>
        </v-card>
    </div>
</template>

<script>
export default {
    // methods: {
    //     getHeight() {
    //         return window.innerHeight
    //     }
    // }
}
</script>

<style>
.title-story {
    position: relative;
}

.title-story:before {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    width: 50%;
    border-bottom: 3px solid #000;
}
</style>
