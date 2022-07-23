<template>
  <div style="background-color: black">
    <v-container>
      <v-row justify="center">
        <v-col align="center" cols="12" lg="8" md="10">
          <p class="text-h6 text-lg-h4">Don't Miss Out, Stay Updated</p>
          <!-- <v-row no-gutters class="my-16">
                        <v-text-field rounded dense placeholder="Email Address" background-color="#05061C" solo flat class="mr-2"></v-text-field>
                        <v-btn rounded class="menu-btn">Subscribe</v-btn>
                    </v-row>
                    <small class="mb-10">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porttitor<br> rhoncus dolor purus non enim praesent </small> -->
          <v-row justify="center" no-gutters class="py-10">
            <v-icon
              small
              @click="
                openLink(
                  'https://twitter.com/StonedHippies?t=EvLv7lx-XqFOU4agae2WAA&s=09'
                )
              "
              >mdi-twitter</v-icon
            >
            <v-img :src="require('assets/images/discord.png')" class="mx-2"  @click="openLink('https://discord.gg/FNqSVmzEw3')" max-width="18" height="18"></v-img>
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