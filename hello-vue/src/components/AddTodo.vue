<template>
    <div>
        <form @submit="addToDo">
            <input type="text" v-model="title" name="title" placeholder="Add Todo...">
            <input type="submit" value="Submit" class="btn">
        </form>
    </div>
</template>

<script>
import uuid from 'uuid'
export default {
    name: "AddTodo",
    data() {
        return {
            title: ''
        }
    },
    methods: {
        addToDo(e) {
            e.preventDefault();
            const newToDo = {
                id: uuid.v4(),
                title: this.title,
                done: false
            }
            //sending to parent
            this.$emit('add-todo', newToDo);
            this.title = '';
        }
    }
}
</script>

<style scoped>
    form {
        display: flex;
    }

    input[type="text"] {
        flex: 10;
        padding: 5px;
    }

    input[type="submit"] {
        flex: 2;
    }
</style>