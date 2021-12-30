<template>
  <v-simple-table dark>
    <template v-slot:default>
      <thead>
        <tr>
          <th class="text-center">
            Image
          </th>
          <th class="text-center">
            Name
          </th>
          <th class="text-center">
            Order
          </th>
          <th class="text-center">
            Edit
          </th>
          <th class="text-center">
            Delete
          </th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="category in categories" :key="category.id">
          <td class="text-center">
            <div v-if="category.image">
                <img :src="url+'/categories/'+category.image" alt="" style="height:80px;width:auto;padding:2px;margin-bottom: -4px;">
            </div>
            <div v-else>
              <img src="https://vir-za.com/wp-content/uploads/2021/12/virza.png" alt="" style="height:80px;width:auto;">
            </div>
          </td>
          <td class="text-center"> {{ category.name }} </td>
          <td class="text-center"> {{ category.order }} </td>
          <td class="text-center">
            <v-btn
            class="mx-2"
            fab
            dark
            large
            color="cyan"
            v-on:click="() => $router.push({name: 'EditCategory', params: {category}})"
            >
                <font-awesome-icon icon="pen" />
            </v-btn>
          </td>
          <td class="text-center">
            <v-btn
            class="mx-2"
            fab
            dark
            large
            color="red"
            v-on:click="deleteCategory(category.id)"
            >
                <font-awesome-icon icon="trash" />
            </v-btn>
          </td>
        </tr>
      </tbody>
    </template>
  </v-simple-table>
</template>

<script>
  export default {
    data () {
      return {
        categories: [],
        url: window.location.origin
      }
    },
    methods: {
        getCategories(){
            axios.get('api/categories').then(response => {
                if(response.status >= 200 && response.status < 300) {
                    this.categories = response.data.categories
                }
            })
        },
        deleteCategory(id) {
            axios.get('api/delete/category/'+id).then(response => {
                if(response.status >= 200 && response.status < 300) {
                    alert(response.data.message)
                    this.getCategories()
                }
            })
        }

    },
    mounted() {
        this.getCategories()
    }


  }
</script>

<style>

</style>
