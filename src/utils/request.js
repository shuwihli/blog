import axios from 'axios'
// 创建axios实例
const request = axios.create({
  timeout: 10000,
  withCredentials: true, 
})
export default request  
