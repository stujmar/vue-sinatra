<template>
    <div class="todo-item" v-bind:class="{'is-complete':todo.done}">
        <p>
            <input type="checkbox" v-on:change="markComplete">
            {{todo.title}}
            <button @click="$emit('del-todo', todo.id)" class="del">delete</button>
        </p> 
    </div>
</template>

<script>
export default {
    name: "TodoItem",
    props: ["todo"],
    methods: {
        markComplete() {
            this.todo.done = !this.todo.done;
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
        background: #f59191;
        color: #fff;
        border: none;
        padding: 5px 9px;
        border-radius: 5px;
        cursor: pointer;
        float: right;
    }
</style>