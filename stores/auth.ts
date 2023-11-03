import { defineStore } from "pinia";
import axios from "axios";

export const useAuthStore = defineStore('auth', {
  state: () => ({
    profile: null,
    access_levels: null,
    access_list: null,
    user_id : undefined,
    name: "",
    id: null,
    employee_id: null,
    email: null,
    login_email: null,
    login_password: null,
    first_name: null,
    last_name: null,
    phone: null,
    role: null,
    date: null,
    time: null,
    department: null,
    department_id: null,
    userData: undefined,
    employeeData: null,
    employeeID: null,
    departmentID: null,
    profileInfo: null,
    profileId: null,
    editing_id: null,
    editing_portal_id: null,
    editing_first_name: null,
    editing_last_name: null,
    editing_email: null,
    editing_gender: null,
    editing_id_number: null,
    editing_phone: null,
    old_password: null,
    password: null,
    confirm_password: null,
    editing_enthnicity: null,
    editing_province: null,
    editing_city: null,
    editing_nationality: null,
    editing_availability: null,
    editing_disability: null,
    editing_employment_status: null,
    editing_expected_salary: null,
    editing_previous_convictions: null,
    editing_date_of_birth: null,
    editing_resume: null,
    editing_personal_strength: null,
    editing_technical_skills: null,
    editing_address: null
    
  }),
  getters: {
   UserDetails(state:any){
      this.id = state.userData.id
      this.email = state.userData.email
      this.first_name = state.userData.first_name
      this.last_name = state.userData.last_name
      this.phone = state.userData.phone
      this.access_list = state.userData.user.company_access[0].access_list
      this.role = state.userData.rolesondepartments[0].role
      this.department = state.userData.rolesondepartments[0].department.item
      this.department_id = state.userData.rolesondepartments[0].departmentId
   }
  },
  actions: {
    async  register(info: any){
      var data = JSON.stringify({
          "data": info,
      });
      var config = {
          method: 'post',
          url: '/auth/register',
          headers: { 
              'Content-Type': 'application/json'
          },
          data: data
      };

      const result: any = await axios(config).then(function (response) {
          return {
              data: response.data,
              success: true
           }
      })
      .catch(function (error) {
          console.log(error);
          return {
              success: false
           }
      });
      return result;
  },
  async  myProperties(info: any){
    var data = JSON.stringify({
        "data": info,
    });
    var config = {
        method: 'post',
        url: '/auth/myProperties',
        headers: { 
            'Content-Type': 'application/json'
        },
        data: data
    };

    const result: any = await axios(config).then(function (response) {
        return {
            data: response.data,
            success: true
         }
    })
    .catch(function (error) {
        console.log(error);
        return {
            success: false
         }
    });
    return result;
},
async  allProperties(info: any){
  var data = JSON.stringify({
      "data": info,
  });
  var config = {
      method: 'post',
      url: '/auth/allProperties',
      headers: { 
          'Content-Type': 'application/json'
      },
      data: data
  };

  const result: any = await axios(config).then(function (response) {
      return {
          data: response.data,
          success: true
       }
  })
  .catch(function (error) {
      console.log(error);
      return {
          success: false
       }
  });
  return result;
},
async  activeProperties(info: any){
  var data = JSON.stringify({
      "data": info,
  });
  var config = {
      method: 'post',
      url: '/auth/activeProperties',
      headers: { 
          'Content-Type': 'application/json'
      },
      data: data
  };

  const result: any = await axios(config).then(function (response) {
      return {
          data: response.data,
          success: true
       }
  })
  .catch(function (error) {
      console.log(error);
      return {
          success: false
       }
  });
  return result;
},
async  deleteProperty(info: any){
  var data = JSON.stringify({
      "data": info,
  });
  var config = {
      method: 'post',
      url: '/auth/deleteProperty',
      headers: { 
          'Content-Type': 'application/json'
      },
      data: data
  };

  const result: any = await axios(config).then(function (response) {
      return {
          data: response.data,
          success: true
       }
  })
  .catch(function (error) {
      console.log(error);
      return {
          success: false
       }
  });
  return result;
},
async  activateProperty(info: any){
  var data = JSON.stringify({
      "data": info,
  });
  var config = {
      method: 'post',
      url: '/auth/activateProperty',
      headers: { 
          'Content-Type': 'application/json'
      },
      data: data
  };

  const result: any = await axios(config).then(function (response) {
      return {
          data: response.data,
          success: true
       }
  })
  .catch(function (error) {
      console.log(error);
      return {
          success: false
       }
  });
  return result;
},
async  deactivateProperty(info: any){
  var data = JSON.stringify({
      "data": info,
  });
  var config = {
      method: 'post',
      url: '/auth/deactivateProperty',
      headers: { 
          'Content-Type': 'application/json'
      },
      data: data
  };

  const result: any = await axios(config).then(function (response) {
      return {
          data: response.data,
          success: true
       }
  })
  .catch(function (error) {
      console.log(error);
      return {
          success: false
       }
  });
  return result;
},
  async  addProperty(info: any){
    var data = JSON.stringify({
        "data": info,
    });
    var config = {
        method: 'post',
        url: '/auth/addProperty',
        headers: { 
            'Content-Type': 'application/json'
        },
        data: data
    };

    const result: any = await axios(config).then(function (response) {
        return {
            data: response.data,
            success: true
         }
    })
    .catch(function (error) {
        console.log(error);
        return {
            success: false
         }
    });
    return result;
},
   async login(){
      const data = {
         "email": this.login_email,
         "password": this.login_password,
      }

      const config = {
         method: 'post',
         url: '/auth/login',
         headers: { 
            'Content-Type': 'application/json'
         },
         data : data
      }; 

      const result: any = await axios(config).then(function (response) {
         return {
            data: response.data,
            success: true
         }
      }).catch(function (error) {
         console.log(error);

         return {
            success: false
         }
      });
      const employee_data = result.data
      console.log("my employee data is")
      let success = result.data.success
      console.log({success})
      console.log(employee_data)
      this.employeeData = employee_data.employee
      

      return result;
   },
    async me(): Promise<any> {
      const userData:any = useCookie('user').value;
      console.log(useCookie('user').value)
      const token = useCookie('token').value;
      const employeeID:any = useCookie('employee_id').value;
      const departmentID = useCookie('employeeDepartmentID').value
      const accesslist = useCookie('permissions').value || [];
      console.log(token);
      this.userData = userData
      this.user_id = userData?.id
      this.profile = userData?.profile
      console.log('my user data is',userData)
      this.employeeID = employeeID
      return await $fetch('/auth/me', { 
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            token: token
        }) 
      }).then((data: any)=>{ 
        return data;
      }).catch((error)=>{
        console.log(error);
      });
    },
    async logout(): Promise<any>{
      return await $fetch('/auth/logout', { 
        method: "POST",
        headers: { "Content-Type": "application/json" },
      }).then((data: any)=>{
        return data;
      }).catch((error)=>{
        console.log(error);
      });
    }
  }
});

