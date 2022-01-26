<template>
  <div>
      <div class="row justify-content-center">
          <div class="col-md-6">
              <div class="card">
                  <div class="card-header">Now You Can Edit This Record</div>
                  <div class="card-body">
                      <v-form ref="form">
                      <div class="form-group">
                          <label for="name">Name</label>
                          <!-- <input type="text" class="form-control" name="name" > -->
                          <input type="text" class="form-control" name="name" v-model="employee.name">
                      </div>
                      <div class="form-group">
                          <label for="position">Position</label>
                          <!-- <input type="text" class="form-control" name="position" > -->
                          <input type="text" class="form-control" name="position" v-model="employee.position">
                      </div>
                      <div class="form-group">
                          <label for="email">Email</label>
                          <!-- <input type="text" class="form-control" name="email" > -->
                          <input type="text" class="form-control" name="email" v-model="employee.email">
                      </div>
                      <div class="form-group">
                          <button  class="btn btn-primary"  @click.prevent="update" >Update Now</button>
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
    mounted() {
        this.getEmployee()
    },
    data() {
        return {
            employee:{}
        }
    },
    methods: {
        getEmployee() {
            axios.get('getEmployee/'+ this.$route.params.id).then((response) => {
                this.employee = response.data
                console.log(response.data)
            }).catch((error) => {
                console.log(error)
            })
        },
        update() {
            // axios.post('api/create', formData).then(response => {
            //     //  console.log(response.data.image)
            //     if(response.status >= 200 && response.status < 300) {
            //         this.$router.push('/')
            //     }
            // })
            axios.post('/edit/'+ this.$route.params.id, this.employee).then(response => {
                console.log('record update')
                this.$router.push('/')
                this.$toaster.success('Employee updated successfully.')
            }).catch((error) => {
                console.log(error)
            })
        }
    },
}
</script>

<style>

</style>
