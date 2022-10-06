<template>
    <div id="realm">
        <!-- <v-card flat color="transparent">>
        </v-card> -->
        <v-card flat color="mistyRose" style="margin-bottom:-1px; border-radius: 0 !important; z-index: 2; ">
            <v-container class="px-8 px-md-3 py-16" style="color: #000;">
                <v-row>
                    <v-col cols="12" sm="6">
                        <v-row class="mb-6">
                            <p class="title-story text-h4 text-capitalize pb-1" style="width:240px;">
                                Stoned hippies realm(shr)
                            </p>
                        </v-row>
                        <v-row>
                            <p class="para-text">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam quae repudiandae
                                exercitationem quos, tempore illo molestiae dolor, omnis, reprehenderit fugiat
                                delectus voluptates expedita minus porro accusantium quas blanditiis ea voluptatum?
                            </p>
                        </v-row>
                    </v-col>
                    <v-col cols="3" sm="2">
                        <v-spacer></v-spacer>
                    </v-col>
                    <v-col cols="12" sm="4">
                        <v-card class="pa-4 rounded-lg mx-auto" max-width="300"
                            style="background: linear-gradient(180deg, rgba(0, 0, 0, 0.3) 0%, rgba(54, 49, 49, 0.231) 100%); backdrop-filter: blur(10px);">
                            <v-img class="rounded-lg" :src="require('~/assets/images/4156.png')">
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
    border-bottom: 3px solid #000
}
</style>
