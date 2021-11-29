<template>
  <div class="addItem">
    <input type="text" class="input" name="" v-model="item.name" id="" placeholder="Add Todo">
    <button class="addButton" @click="addItem()">
        <font-awesome-icon
            icon="plus"
            class="plus"
        />
    </button>
  </div>
</template>

<script>
export default {
    data: function() {
        return{
            item:{
                name:""
            }
        }
    },

    methods: {
        addItem(){
            if(this.item.name !== ''){
                axios.post('api/todo/store', {
                    todo: this.item.name
                }).then(response => {
                    if(response.status >= 200 && response.status < 300){
                        this.item.name = null
                    }
                })
            }
        }
    }

}
</script>

<style>
    .addItem{
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 25px;
    }
    .input{
        border:1px solid blue;
        border-bottom-left-radius: 4px;
        border-top-left-radius: 4px;
        outline: none;
        padding: 5px;
        height: 30px;
        width:100%;

    }
    .addButton{
        height: 42px;
        width: 42px;
        border: 1px solid blue;
        border-bottom-right-radius: 4px;
        border-top-right-radius: 4px;
        background-color: goldenrod;
        cursor: pointer;
    }
    .plus{
        font-size: 20px;
        color: blue;
    }
</style>
