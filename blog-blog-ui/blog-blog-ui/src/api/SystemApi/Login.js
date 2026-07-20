import service from "@/utils/request"
export function Authentication(data){
    return service({
        url: '/api/login',
        method: 'post',
        data: data
    })
}
export function getLogin(){
    return service({
        url:"/api/loginUser",
        method:"get",
    })
}
export function logout(){
   return service({
     url:"/api/logout",
     method:"get"
   })
}
export function signup(data){
    return service({
        "url":"/api/signUser",
        method:"post",
        data:data
    })
}
export function wxlogin(){
    return service({
        "url":"/api/wx/login",
        method:"get",
    })
}
// export function getUser(){ // 返回登录用户的cookie信息
//     const user = document.cookie;
//     var myCookie = document.cookie.replace( // MDN提供获取指定cookie参考写法 这么复杂的正则我可写不来 哭唧唧 https://developer.mozilla.org/zh-CN/docs/Web/API/Document/cookie#%E4%B8%80%E4%B8%AA%E5%B0%8F%E6%A1%86%E6%9E%B6%EF%BC%9A%E4%B8%80%E4%B8%AA%E5%AE%8C%E6%95%B4%E6%94%AF%E6%8C%81_unicode_%E7%9A%84_cookie_%E8%AF%BB%E5%8F%96%E5%86%99%E5%85%A5%E5%99%A8
//         /(?:(?:^|.*;\s*)userInfo\s*\=\s*([^;]*).*$)|^.*$/,
//         "$1",
//     );
//     const jsonUser =  JSON.parse(myCookie)
//     return jsonUser;
// }