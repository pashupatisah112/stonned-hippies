<template>
<div>
    <video muted loop id="bgVideo" class="mt-n16">
        <source :src="require('~/assets/videos/main-back.mp4')" type="video/mp4" />
        Your browser does not support HTML5 video.
    </video>
    <v-overlay :absolute="absolute" :value="overlay" :opacity="opacity">
        <v-card max-width="500" style="padding:50px" color="transparent" flat>
            <v-col align="right">
                <v-img :src="require('~/assets/images/Static-text.png')">
                <v-card color="transparent" flat style="position:absolute;bottom:0;right:0">
                    <p class="start-btn ml-10">GET IN ALREADY</p>
                </v-card>
                </v-img>
                <v-img :src="require('~/assets/images/Link.png')"  @click="playvid()" class="mt-2 mx-auto link" max-width="300"></v-img>

            </v-col>
        </v-card>
    </v-overlay>
</div>
</template>

<script>
export default {
    data() {
        return {
            absolute: true,
            overlay: true,
            opacity: 1,
        };
    },
    methods: {
        getHeight() {
            return window.innerHeight - 60;
        },
        playvid() {
            var vid = document.getElementById("bgVideo");
            vid.play();
            vid.muted = false;
            this.overlay = false;
        },
    },
};
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
    margin-top: 20%;
}

.start-btn {
    font-size: 40px;
    z-index: 5000;
}
.link{
    cursor: pointer;
}

.no-hover:hover {
    background-color: none;
}
</style>
