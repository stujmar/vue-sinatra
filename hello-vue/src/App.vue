<template>
  <div id="app">
    <Landing />
    {{msg}}
    <Todos v-bind:todos="todos" />
  </div>
</template>

<script>
import Landing from './components/Landing.vue';
import Todos from './components/Todos';

export default {
  name: 'App',
  components: {
    Landing,
    Todos
  }, 
  data() {
    return {
      msg: 'Hello',
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
          done: true
        },
      ]
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
  margin-top: 60px;
}
</style>
