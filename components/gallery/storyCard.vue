<template>
    <div>
        <v-card color="transparent" flat class="pa-5 rounded-lg">
            <div class="outer-card px-8 pt-8 pb-4 mb-4" color="greenGray"
                style="background: #8A9D72; max-width: 300px;">
                <div class="inner-card">
                    <v-img :src="image" :lazy-src="image" class="mx-auto mb-6 rounded-lg" width="220" height="220">
                        <template v-slot:placeholder>
                            <v-row class="fill-height ma-0" align="center" justify="center">
                                <v-progress-circular indeterminate color="grey lighten-5"></v-progress-circular>
                            </v-row>
                        </template>
                    </v-img>

                    <v-card-subtitle class="text-center mx-n8 pa-2" color="lightGray"
                        style="background: #A6B2A3; box-shadow:inset 0px 6px 5px 0px #808c7b;">
                        {{title.slice(0,20)}}<span v-if="title.length>20">..</span>
                    </v-card-subtitle>
                    <v-card-text v-if="text.length > 0" class="mt-4 pa-0 text-card">{{text}}</v-card-text>
                </div>
            </div>
        </v-card>
    </div>
</template>

<script>
import { title } from 'process';

export default {
    data() {
        return {
            showText: false
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
        text: {
            type: String,
        }
    },
}
</script>

<style>
.text-card {
    min-height: 180px;
}
</style>