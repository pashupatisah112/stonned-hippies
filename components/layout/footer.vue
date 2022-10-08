<template>
    <div style="background-color: black">
        <v-container class="mt-8">
            <v-row justify="center">
                <v-col align="center" cols="12" lg="8" md="10">
                    <p class="text-h6 text-lg-h4">Don't Miss Out, Stay Updated</p>
                    <v-row no-gutters class="my-8 align-center">
                        <v-col cols="1" sm="2">
                            <v-spacer></v-spacer>
                        </v-col>
                        <v-col cols="7" sm="5">
                            <v-text-field rounded dense placeholder="Email Address" background-color="#333" solo flat
                                class="mr-2 text-field"></v-text-field>
                        </v-col>
                        <v-col cols="3" sm="3">
                            <ReusableGradientButton ButtonText="Subscribe" />
                        </v-col>
                        <v-col cols="1" sm="2">
                            <v-spacer></v-spacer>
                        </v-col>
                    </v-row>
                    <v-row justify="center" no-gutters class="mb-8">
                        <v-icon small @click="
                          openLink(
                            'https://twitter.com/StonedHippies?t=EvLv7lx-XqFOU4agae2WAA&s=09'
                          )
                        ">mdi-twitter</v-icon>
                        <v-img :src="require('assets/images/discord.png')" class="mx-2"
                            @click="openLink('https://discord.gg/FNqSVmzEw3')" max-width="18" height="18"></v-img>
                        <v-img :src="require('assets/images/medium.png')"
                            @click="openLink('https://medium.com/stoned-hippies')" max-width="20"></v-img>

                    </v-row>
                </v-col>
            </v-row>
        </v-container>
    </div>
</template>

<script>
export default {
    methods: {
        openLink(item) {
            window.open(item, "_blank");
        },
    },
};
</script>

<style lang="css">
.custom-placeholer-color input::placeholder {
    color: red !important;
    opacity: 1;
}

.text-field .v-text-field__details {
    display: none;
}
</style>