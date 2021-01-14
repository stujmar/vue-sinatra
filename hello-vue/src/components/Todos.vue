<template>
    <div>
        <h1>{{msg}}</h1>  
        <div v-bind:key="todo.id" v-for="todo in todos" >
            <h3>{{todo.title}}</h3>  
        </div>
    </div>    
</template>

<script>
export default {
    name: "Todos",
    props: ["todos"],
    data () {
        return {
            msg: "Let's get this stuff done!"
        }
    }
}
</script>

<style scoped>

</style>