<template>
  <div class="container">

    <router-view></router-view>

  </div>
</template>

<script>
  import Vue from 'vue'
  import VueRouter from 'vue-router'

  import EmployeeIndexPage from 'EmployeeIndexPage.vue'

  const router = new VueRouter({
    routes: [
      { path: '/',
        component: EmployeeIndexPage }
    ]
  })

  Vue.use(VueRouter)

  export default {
    router
  }
</script>

<style scoped>
</style>
