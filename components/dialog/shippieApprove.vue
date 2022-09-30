<template>
    <div>
        <v-row justify="center">
            <v-dialog v-model="dialog" persistent max-width="560">
                <!-- <template v-slot:activator="{ on, attrs }">
                    <v-btn color="primary" v-bind="attrs" v-on="on">
                        Open Dialog
                    </v-btn>
                </template> -->
                <v-card class="py-8" color="#FFF" style="color:#000; position: relative; overflow: hidden;">
                    <v-row class="px-6">
                        <v-col cols="12" sm="9">
                            <v-card-title class="text-h5 pa-0">
                                Are you ready for the shippie Expediation?
                            </v-card-title>
                        </v-col>
                        <v-col cols="12" sm="9" class="mb-4">
                            <v-card-text class="pa-0" style="color:#9C9C9C;">On Clicking Approved, your NFT will be
                                locked for 30
                                days &
                                will
                                be activate after
                                onwards. Click on Approve to confirm.</v-card-text>
                        </v-col>
                        <v-card-actions class="ml-auto">
                            <v-btn class="mr-4 px-4" text @click="dialog = false"
                                style="background: rgba(178, 191, 197, 0.75); box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.15);">
                                Cancel
                            </v-btn>
                            <v-btn class="px-4" text @click="dialog = false"
                                style="background: #DA473E; box-shadow: 0px 4px 4px 2px rgba(0, 0, 0, 0.15);">
                                Approve
                            </v-btn>
                        </v-card-actions>
                    </v-row>
                </v-card>
            </v-dialog>
        </v-row>
    </div>
</template>

<script>
export default {
    data() {
        return {
            dialog: false,
        }
    },
}
</script>

<style lang="scss" scoped>

</style>