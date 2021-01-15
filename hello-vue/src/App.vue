<template>
  <div id="app">
    <Header />
    <AddTodo v-on:add-todo="addToDo" />
    {{msg}}
    <Todos v-bind:todos="todos" v-on:del-todo="deleteTodo" />
  </div>
</template>

<script>

import Todos from './components/Todos';
import Header from './components/layout/Header.vue';
import AddTodo from './components/AddTodo.vue';

export default {
  name: 'App',
  components: {
    Todos,
    Header,
    AddTodo
  }, 
  data() {
    return {
      msg: '',
      todos: [
        {
          id: 1,
          title: "Todo One",
          done: false
        },
                {
          id: 2,
          title: "Todo Two",
          done: false
        },
                {
          id: 3,
          title: "Todo Three",
          done: false
        },
      ]
    }
  },
  methods: {
    deleteTodo(id) {
      this.todos = this.todos.filter((todo) => todo.id !== id);
    },
    addToDo(newToDo) {
      this.todos = [...this.todos, newToDo];
    }
  }
}
</script>

<style>
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }

  body {
    font-family: Arial, Helvetica, san-serif;
    line-height: 1.4;
  }

  .btn {
    display: inline-block;
    border: none;
    background: #555;
    color: #fff;
    padding: 7px 20px;
    cursor: pointer;
  }

  .btn:hover {
    background: #666;
  }
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 30px;
}
</style>
