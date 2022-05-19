<template>
<div>
    <v-card :height="getHeight()">
        <video autoplay muted loop id="bgVideo" style="max-width:100%">
            <source :src="require('~/assets/videos/landing-video.mp4')" type="video/mp4">
            Your browser does not support HTML5 video.
        </video>
    </v-card>

</div>
</template>

<script>
export default {
    methods: {
        getHeight() {
            return window.innerHeight - 60

        },
    }
}
</script>

<style>
#bgVideo {
    position: absolute;
    right: 0;
    bottom: 0;
    min-width: 100%;
    min-height: 100%;
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
