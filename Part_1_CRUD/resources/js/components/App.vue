<template>
    <div class="container">
        <h1 style="margin-top: 200px; text-align: center;">Todo List</h1>
        <div class="todoListContainer">
            <add-item-form />
            <list-view />
        </div>
    </div>
</template>

<script>
import addItemForm from './addItemForm.vue'
import listView from './listView.vue'
    export default {
        components: {
            addItemForm,
            listView
        },

    }
</script>

<style scoped>
    .todoListContainer{
        width: 400px;
        margin: auto;
        margin-top: 50px;
    }
</style>

