<template>
<div>
    <video muted loop id="bgVideo" class="mt-n16">
        <source :src="require('~/assets/videos/main-back.mp4')" type="video/mp4">
        Your browser does not support HTML5 video.
    </video>
    <v-overlay :absolute="absolute" :value="overlay" :opacity="opacity">
        <v-container>
            <v-row>
                <v-col align="right">
                    <v-img :src="require('~/assets/images/Static-text.png')" style="margin-bottom:-110px" max-width="500"></v-img>
                    <v-card flat color="transparent" class="mt-n16"><p class="start-btn" @click="playvid()">GET IN ALREADY</p></v-card>
                </v-col>
            </v-row>
        </v-container>

    </v-overlay>

</div>
</template>

<script>
export default {
    data() {
        return {
            absolute: true,
            overlay: true,
            opacity:0.95
        }
    },
    methods: {
        getHeight() {
            return window.innerHeight - 60
        },
        playvid() {
            var vid = document.getElementById("bgVideo");
            vid.play()
            vid.muted = false
            this.overlay=false
        }
    },

}
</script>

<style>
#bgVideo {
    position: static;
    right: 0;
    bottom: 0;
    width: 100%;
}

.content {
    position: fixed;
    top: 0;
    color: #f1f1f1;
    width: 100%;
    padding: 20px;
    margin-left: 15%;
    margin-top: 20%
}

.start-btn {
    font-size: 55px;
    cursor: pointer;
    z-index: 5000;
}
.no-hover:hover{
    background-color: none;
}
</style>
