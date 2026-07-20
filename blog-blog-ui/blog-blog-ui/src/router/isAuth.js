import {getLogin} from "@/api/SystemApi/Login"
import {ref} from 'vue' 
// export async function isAuthenticated(){
//     const isAuth = ref();
//     await getLogin().then((res)=>{
//         isAuth.value = res.data
//     }).catch((res)=>{
//         console.log("没登陆了",res);
//     })
//     return isAuth.value
// }
export function isAuthenticated(){
        var cookie = document.cookie.replace(
         /(?:(?:^|.*;\s*)userInfo\s*\=\s*([^;]*).*$)|^.*$/,
         "$1",
        );
        if (cookie){
            return 1
        }else{
            return 0;
        }
}