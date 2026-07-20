import { Base64 } from 'js-base64'; // base64.js
export function BaseEncode(str){
    return Base64.encode(str)
} //写一个用来DE Base64的工具方法
export function BaseDecode(str){
    return Base64.decode(str)
} //写一个用来DE Base64的工具方法