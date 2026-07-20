import { ref } from "vue";
import {BaseEncode,BaseDecode} from '@/utils/BaseUtil' 
export function getUserInfo(){ // 从cookie中获取用户存储的信息 (cookie已指定位userInfo)
    const userInfo = ref()  // 该方法有缺陷，还不能用 主要在于该变量的作用域不是全局的
    var cookie = document.cookie.replace(
     /(?:(?:^|.*;\s*)userInfo\s*\=\s*([^;]*).*$)|^.*$/,
     "$1",
    );
    if(cookie){
        userInfo.value = JSON.parse(BaseDecode(cookie)) // cookie信息
    }
    // const temp = ref("http://127.0.0.1:9090/" + userInfo.value.avatar)
    // avatarUrl.value = JSON.stringify(temp.value).slice(1,-1)//我也不知道我写了啥，但反正能用
}