<template>
  <div id="app">
    <Header />
    {{msg}}
    <Todos v-bind:todos="todos" v-on:del-todo="deleteTodo" />
  </div>
</template>

<script>

import Todos from './components/Todos';
import Header from './components/layout/Header.vue';

export default {
  name: 'App',
  components: {
    Todos,
    Header
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
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 30px;
}
</style>
