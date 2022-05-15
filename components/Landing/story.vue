<template>
<div>
   <v-container class="pa-16">
       <v-row>
           <v-col cols="12" lg="6" md="6">
               <div class="title-box">
                   <p class="text-h4">OUR STORY</p>
               </div>
               <p class="text-uppercase para-text">
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porttitor rhoncus dolor purus non enim praesent elementum facilisis. Amet volutpat consequat mauris nunc congue nisi. Feugiat vivamus at augue eget. A arcu cursus vitae congue mauris rhoncus. 
               </p>
           </v-col>
           <v-col cols="12" lg="6" md="6" align="center">
               <v-img :src="require('~/assets/images/5.png')" max-width="300"></v-img>
           </v-col>
       </v-row>
   </v-container>
</div>
</template>
<style>
.title-box{
    border-left:3px solid white;
    margin:10px 0px;
    padding:10px;
}
</style>