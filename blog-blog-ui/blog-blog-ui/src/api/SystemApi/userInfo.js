import {BaseEncode,BaseDecode} from '@/utils/BaseUtil'
import { ref } from 'vue';
 export function checkProtocolAndIP(str) {
    try {
    new URL(str);
    return true;
  } catch (e) {
    return false;
  }
}
export default function getUserInfo(userInfo){ // 从cookie中获取用户存储的信息
    let avatar = ref("")
    var cookie = document.cookie.replace(
     /(?:(?:^|.*;\s*)userInfo\s*\=\s*([^;]*).*$)|^.*$/, 
     "$1",
    );
    if(cookie){
        userInfo.value = JSON.parse(BaseDecode(cookie))
        if(checkProtocolAndIP(userInfo.value.avatar)){
            const temp = ref(userInfo.value.avatar)
            userInfo.value.avatar= JSON.stringify(temp.value).slice(1,-1)//我也不知道我写了啥，但反正能用
            return userInfo.value
            
        }else{
            const temp = ref("http://127.0.0.1:9090/" + userInfo.value.avatar)
            userInfo.value.avatar = JSON.stringify(temp.value).slice(1,-1)//我也不知道我写了啥，但反正能用
            console.log(avatar);
            return userInfo.value
        }
    }
    return "没有该cookie值"
}