<template>
<div>
    <video autoplay muted loop id="bgVideo" class="mt-n16" @click="playvid()">
        <source :src="require('~/assets/videos/main-back.mp4')" type="video/mp4">
        Your browser does not support HTML5 video.
    </video>
    <!-- <audio controls autoplay>
        <source :src="require('~/assets/videos/main-audio.mp3')" type="audio/mpeg">

        Your browser does not support the audio element.
    </audio>
    <v-btn ref="playbtn" @click="playvid()">play</v-btn> -->

</div>
</template>

<script>
export default {
    mounted() {
        // this.playvid()
    },
    methods: {
        getHeight() {
            return window.innerHeight - 60
        },
        playvid() {
            var vid = document.getElementById("bgVideo");
            vid.muted = false
            console.log('moved')

            // vid.play()
            // setTimeout(function () {
            //     vid.muted=false
            // }, 2000);
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
</style>
