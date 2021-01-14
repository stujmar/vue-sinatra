<template>
    <div class="todo-item" v-bind:class="{'is-complete':todo.done}">
        <p>
            <input type="checkbox" v-on:change="markComplete">
            {{todo.title}}
        </p> 
    </div>
</template>

<script>
export default {
    name: "TodoItem",
    props: ["todo"],
    methods: {
        markComplete() {
            console.log("Hi");
        }
    }
}
</script>

<style scoped>
    .todo-item {
        background: #f4f4f4;
        padding: 10px;
        border-bottom: 1px #ccc dotted;
    }

    .is-complete {
        text-decoration: line-through;
    }

    .del {
        background: #ff0000;
        color: #fff;
        border: none;
        padding: 5px 9px;
        border-radius: 50px;
        cursor: pointer;
        float: right;
    }
</style>