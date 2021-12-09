<template>
  <span>
    <v-toolbar app color="black" dark>
      <v-toolbar-title>
        <v-img src="../../public/virza.png" height="110px" width="200px" ></v-img>
      </v-toolbar-title>

      <v-spacer></v-spacer>

      <v-btn flat class="hidden-sm-and-down white font-weight-bold black--text bg-wight" >Specifications</v-btn>
      <v-btn class="hidden-sm-and-down white font-weight-bold black--text ml-3 bg-wight" >Order Now</v-btn>
    </v-toolbar>
  </span>
</template>

<script>
export default {
  
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .bg-wight{
    /* background: #066a09 !important; */
    margin: 0 5px;
  }
</style>
