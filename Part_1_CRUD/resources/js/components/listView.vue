<template>
    <div>
        <div v-for="(item, index) in items" :key="index">
            <list-item
            :item="item"
            class="item"
            />
        </div>
    </div>
</template>

<script>
import listItem from './listItem.vue'
// import ListItem from './listItem.vue'
export default {
  components: {
      listItem
    //   ListItem
   },
   data: function() {
       return {
           items: []
       }
   },
   methods: {
       getTodos() {
           axios.get('api/todos').then(response => {
               if(response.status === 200) {
                   this.items = response.data.todos
               }
           })
       }
   },
   created() {
       this.getTodos()
   }

}
</script>

<style>
    .item{
        padding: 12px;
        margin-top: 5px;
        border: 1px solid blue;
        border-radius: 7px;
    }
</style>
