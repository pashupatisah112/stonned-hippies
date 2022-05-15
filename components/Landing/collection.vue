<template>
    <div>
        <v-container class="pa-10">
            <v-row justify="center">
                <div class="mt-16 gradient-text2">
                    COLLECTION
                </div>
            </v-row>
            <v-row justify="center" class="py-16">
                <v-col cols="12" lg="2" md="2">
                    <v-img :src="require('~/assets/images/1.png')"></v-img>
                </v-col>
                <v-col cols="12" lg="2" md="2">
                    <v-img :src="require('~/assets/images/2.png')"></v-img>
                </v-col>
                <v-col cols="12" lg="2" md="2">
                    <v-img :src="require('~/assets/images/3.png')"></v-img>
                </v-col>
                <v-col cols="12" lg="2" md="2">
                    <v-img :src="require('~/assets/images/4.png')"></v-img>
                </v-col>
                <v-col cols="12" lg="2" md="2">
                    <v-img :src="require('~/assets/images/5.png')"></v-img>
                </v-col>
            </v-row>
        </v-container>
    </div>
</template>
<script>
export default {
    data(){
        return{
            images:[
                {src:'1.png'},
                {src:'2.png'},
                {src:'3.png'},
                {src:'4.png'},
                {src:'5.png'}
            ]
        }
    },
    methods:{
        getImage(item){
            return
        }
    }
}
</script>
<style>
div.gradient-text2{
    border:1px solid #fe87ff;
    opacity: 0.6;
    padding: 5px 25px;
    border-radius: 5px;
}
</style>