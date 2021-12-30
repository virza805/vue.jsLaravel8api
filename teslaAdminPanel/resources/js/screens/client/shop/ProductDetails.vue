<template>
  <div style="background: white;">
      <v-container>
          <div class="row mt-5">
              <div class="col-md-5 col-sm-5 col-xs-12">
                  <v-img
                  style="height:500px"
                  :src="'/products/'+ product.image"
                  ></v-img>
              </div>
              <div class="col-md-7 col-sm-7 col-xs-12">
                  <div class="pl-6">
                      <p class="display-1 mb-0">{{ product.name }}</p>
                      <v-card-actions class="pa-0">
                          <p class="headline font-weight-light pt-3">{{ product.price }}</p>
                          <v-spacer></v-spacer>
                      </v-card-actions>
                      <p class="subtitle-1 font-weight-thin">{{ product.description }}</p>

                      <v-btn
                      @click="() => addItemToCart(product)"
                      class="primary white--text"
                      outlined
                       tile
                       dense >Add To Cart</v-btn>
                  </div>
              </div>
          </div>
          <div class="row">
              <div class="col-sm-12 col-xs-12">
                  <v-tabs>
                    <v-tab>Description</v-tab>
                        <v-tab-item>
                            <p class="pt-10 subtitle-1 font-weight-thin">{{ product.description }}</p>
                        </v-tab-item>
                  </v-tabs>
                  <v-card-text class="pa-0 pt-4" tile outlined>
                      <p class="subtitle-1 font-weight-light pt-3 text-center" >Other Products</p>
<v-divide></v-divide>
                      <div class="row">


                            <div class="col-12 col-md-2 col-sm-4 col-xs-6 text-center" v-for="productItem in products" :key="productItem.id" >
                                <v-hover v-slot:default="{ hover }" open-delay="240">
                                    <v-card :elevation="hover ? 16 : 2" >
                                        <v-img
                                        class="white--text align-end" height="200px"
                                        :src="'/products/'+productItem.image" >
                                            <v-card-title>{{ productItem.name }}</v-card-title>
                                        </v-img>
                                        <v-card-text class="text-center text--primary">
                                            <div>{{ productItem.price }}</div>
                                            <div>{{ productItem.category.name }}</div>
                                        </v-card-text>
                                        <div class="text-center">
                                            <v-btn
                                            @click="()=> {
                                                product = productItem
                                                $router.push({name: 'ProductDetails', query: { product: productItem }})
                                                }
                                                "
                                            class="ma-2"
                                            outlined
                                            color="info">View Product</v-btn>
                                        </div>
                                    </v-card>
                                </v-hover>
                            </div><!-- end-1 -->


                        </div>
                  </v-card-text>
              </div>
          </div>
      </v-container>
  </div>
</template>

<script>
export default {
    // props: ["product"],

    data: function() {
        return {
            products: [],
            product: ''
        }
    },

    methods: {
        getLatestProducts() {
            axios.get('api/latestProduct').then(response => {
                if(response.status >= 200 && response.status < 300) {
                    this.products = response.data.products
                }
            });
        },
        addItemToCart(product){
            this.$store.dispatch('addItemToCart', product)
            console.log(this.$store.getters.getCartItems)
        }
    },

    mounted() {
        this.product = this.$route.query.product
        this.getLatestProducts();
    }
};
</script>

<style>

</style>
