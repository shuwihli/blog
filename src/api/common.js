import request from "@/utils/request";
export function artCommon (query){
    return request({
        "url":`/api/artCommon/sel`,
        method:'get',
        params:query
    })
} 
export function addArtCommon (data){
    return request({
        "url":"/api/artCommon/add",
        "data":data,
        method:'post',
    })
}