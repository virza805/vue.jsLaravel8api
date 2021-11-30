<template>
    <div class="item">
        <input type="checkbox" v-model="item.completed" name="" id="">
        <span :class="['itemText', item.completed ? 'completed' : '']">{{ item.todo }}</span>

        <button class="edit">
            <font-awesome-icon
            icon = "edit"
            />
        </button>

        <button class="delete">
            <font-awesome-icon
            icon = "trash"
            />
        </button>
    </div>
</template>

<script>
export default {
    props: ['item']
}
</script>

<style>
    .item{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .completed {
        text-decoration: line-through;
        color: #999999;
    }
    .itemText{
        width: 100%;
        margin-left: 20px;
    }
    .edit {
        color: blue;
        border-radius: 5px;
        border:none;
        outline: none;
        margin-right: 5px;
        background-color: white;
        font-size: 17px;
        cursor: pointer;
    }
    .delete {
        color: red;
        border:0px;
        border-radius: 5px;
        outline: none;
        background-color: white;
        font-size: 17px;
        cursor: pointer;
    }
</style>
