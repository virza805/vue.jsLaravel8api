<template>
    <div>
        <promo />
        <specifications />
        <interior />
        <core-features />
        <order-now />
    </div>
  
  
</template>

<script>
import Promo from '../components/Promo.vue'
import Specifications from '../components/Specifications.vue'
import Interior from '../components/Interior.vue'
import CoreFeatures from '../components/CoreFeatures.vue'
import OrderNow from '../components/OrderNow.vue'
 // @ is an alias to /src

export default {
  components: { 
    Promo, 
    Specifications,
    Interior,
    CoreFeatures,
    OrderNow
   },
  
}
</script>

<style>

</style>