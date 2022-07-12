export const state = () => ({
    
  });
  
  export const mutations = {
    changeRoute(state,payload){
      this.$router.push(payload)
    }
  };