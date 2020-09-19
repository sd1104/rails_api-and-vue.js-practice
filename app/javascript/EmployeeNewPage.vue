<template>
  <div class="container">
    <h4>New Commit</h4>
    <hr>
    <form @submit.prevent="createEmployee">
      <div v-if="errors.length != 0">
        <ul v-for="e in errors" :key="e">
          <li><font color="red">{{ e }}</font></li>
        </ul>
      </div>
      <div>
        <label class="form-group">Name</label>
        <input class="form-control" v-model="employee.name" type="text">
      </div>
      <br>
      <div>
        <label class="form-group">Department</label>
        <input class="form-control" v-model="employee.department" type="text">
      </div>
      <br>
      <div>
        <label class="form-group">Gender</label>
        <select class="form-control" v-model="employee.gender">
          <option>other</option>
          <option>male</option>
          <option>female</option>
        </select>
      </div>
      <br>
      <div>
        <label class="form-group">Birth</label>
        <input class="form-control" v-model="employee.birth" type="date">
      </div>
      <br>
      <div>
        <label class="form-group">Joined Date</label>
        <input class="form-control" v-model="employee.joined_date" type="date">
      </div>
      <br>
      <div>
        <label class="form-group">Payment</label>
        <input class="form-control" v-model="employee.payment" type="number" min="0">
      </div>
      <br>
      <div>
        <label class="form-group">Note</label>
        <input class="form-control" v-model="employee.note" type="text">
      </div>
      <br>
      <br>
      <button type="submit" class="btn btn-secondary">
        Commit
      </button>
    </form>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      employee: {
        name: '',
        department: '',
        gender: '',
        birth: '',
        joined_date: '',
        payment: '',
        note: ''
      },
      errors: ''
    }
  },
  methods: {
    createEmployee: function() {
      axios
        .post('/api/v1/employees', this.employee)
        .then(response => {
          let e = response.data;
          this.$router.push({ name: 'EmployeeDetailPage', params: { id: e.id } });
        })
        .catch(error => {
          console.error(error);
          if (error.response.data && error.response.data.errors) {
            this.errors = error.response.data.errors;
          }
        });
    }
  }
}
</script>

<style scoped>
</style>