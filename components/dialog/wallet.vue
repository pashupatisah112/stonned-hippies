<template>
    <div>
        <v-dialog v-model="walletDialog" max-width="400" persistent>
            <div class="white-border rounded-lg">
                <v-card color="background" class="py-2 rounded-lg">
                    <v-col>
                        <v-icon class="float-right" @click="$store.commit('wallet/setWalletDialog', false)">mdi-close
                        </v-icon>
                        <p class="text-center">Choose your wallet to continue</p>
                        <v-list-item v-for="(item, i) in wallets" :key="i" @click="connect(item)">
                            <v-list-item-avatar tile size="30">
                                <v-img :src="require('~/assets/images/' + item.icon)"></v-img>
                            </v-list-item-avatar>
                            <v-list-item-content>
                                <v-list-item-title>{{ item.title }}</v-list-item-title>
                            </v-list-item-content>
                            <v-list-item-action>
                                <small>{{ item.status }}</small>
                            </v-list-item-action>
                        </v-list-item>
                    </v-col>
                </v-card>
            </div>
        </v-dialog>
    </div>
</template>
    
<script>
export default {
    data() {
        return {
            wallets: [{
                icon: "phantom.png",
                title: "Phantom",
                status: null,
                action: "phantom",
            },
            {
                icon: "metamask.jpg",
                title: "Metamask",
                status: null,
                action: "metamask",
            },
            ],
        };
    },
    computed: {
        walletDialog: {
            get() {
                return this.$store.state.wallet.walletDialog;
            },
            set(value) {
                this.$store.commit("wallet/setWalletDialog", value);
            },
        },
    },
    mounted() {
        this.detectWallet();
    },
    methods: {
        async detectWallet() {
            var isPhantom = await this.$store.dispatch("wallet/detectPhantom");
            var isMetamask = await this.$store.dispatch("wallet/detectMetamask");
            if (isPhantom) {
                this.wallets[0].status = "Detected";
            }
            if (isMetamask) {
                this.wallets[1].status = "Detected";
            }
        },
        connect(item) {
            if (item.status != null) {
                if (item.action == "phantom") {
                    this.$store.dispatch("wallet/connectPhantom");
                } else if (item.action == "metamask") {
                    this.$store.dispatch("wallet/connectMetamask");
                }
            } else {
                this.$toast
                    .error('Please install wallet first.', {
                        iconPack: "mdi",
                        icon: "mdi-wallet",
                        theme: "outline",
                    })
                    .goAway(3000);
            }
        },
    },
};
</script>
    