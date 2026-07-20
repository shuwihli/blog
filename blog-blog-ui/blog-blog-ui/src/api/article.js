import request from '../utils/request'

export function listart() {
  return request({
    url: '/api/article/get',
    method: 'get',
  })
}
export function getByIdArt(id) {
  return request({
    url: `/api/article/getById?id=${id}`,
    method: 'get'
  })
}

export function getHeat(query) {
  return request({
    url: '/article/heat',
    method: 'get',
    params: query
  })
}
export function add(data) {
  return request({
    url: '/api/article/addArticle',
    method:'post',
    data: data
  })
}

