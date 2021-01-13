<template>
    <div>
        <h1>{{msg}}</h1>    
    </div>    
</template>

<script>
export default {
    name: "Todos",
    props: ["todos"],
    data () {
        return {
            msg: "Todo's Title"
        }
    }
}
</script>

<style scoped>

</style>