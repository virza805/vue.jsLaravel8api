<template>
  <div>
      <div class="row justify-content-center">
          <div class="col-md-6">
              <div class="card">
                  <div class="card-header">Create New Record</div>
                  <div class="card-body">
                      <v-form ref="form">
                      <div class="form-group">
                          <label for="name">Name</label>
                          <!-- <input type="text" class="form-control" name="name" > -->
                          <input type="text" class="form-control" name="name" v-model="formData.name">
                      </div>
                      <div class="form-group">
                          <label for="position">Position</label>
                          <!-- <input type="text" class="form-control" name="position" > -->
                          <input type="text" class="form-control" name="position" v-model="formData.position">
                      </div>
                      <div class="form-group">
                          <label for="email">Email</label>
                          <!-- <input type="text" class="form-control" name="email" > -->
                          <input type="text" class="form-control" name="email" v-model="formData.email">
                      </div>
                      <div class="form-group">
                          <button  class="btn btn-primary"  @click.prevent="create" >Create</button>
                      </div>
                      </v-form>
                  </div>
              </div>
          </div>
      </div>
  </div>
</template>

<script>
export default {
    data() {
        return {
            formData:{
                name: '',
                position: '',
                email: ''
            }
        }
    },
    methods: {
        create() {
            // axios.post('api/create', formData).then(response => {
            //     //  console.log(response.data.image)
            //     if(response.status >= 200 && response.status < 300) {
            //         this.$router.push('/')
            //     }
            // })
            axios.post('/create', this.formData).then(response => {
                console.log('record created')
                this.$router.push('/')
                this.$toaster.success('Employee added successfully.')
            }).catch((error) => {
                console.log(error)
            })
        }
    },
}
</script>

<style>

</style>
