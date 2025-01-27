<template>
  <u-comment :config="config" @submit="submit">
    <!-- <template>导航栏卡槽</template> -->
    <!-- <template #header>头部卡槽</template> -->
    <!-- <template #action="{ user }">动作卡槽{{ user.username }}</template> -->
    <!-- <template #avatar="{ id, user }">头像卡槽{{ user.avatar }}</template> -->
    <!-- <template #info>信息卡槽</template> -->
    <!-- <template #card>用户信息卡片卡槽</template> -->
    <!-- <template #func>功能区域卡槽</template> -->
  </u-comment>
</template>

<script setup lang="ts">
import { reactive,ref,onMounted} from 'vue'
import getUserInfo from '@/api/SystemApi/userInfo'
import { UToast, Time, CommentApi, CommentSubmitApi, ConfigApi } from 'undraw-ui'
import {addArtCommon,artCommon} from "@/api/common"
import { v4 as uuidv4 } from 'uuid';  
const Loginuser = ref()
const config = reactive<ConfigApi>({
  user: {} as any, // 当前用户信息
  comments: [], // 评论数据
  relativeTime: true, // 开启人性化时间
  show: {
    level: false,    // 关闭等级显示
    homeLink: false, // 关闭个人主页链接跳转
    address: false, // 关闭地址信息
    likes: false    // 关闭点赞按钮显示
  }
})
onMounted(()=>{
  Loginuser.value = getUserInfo(Loginuser)
  getCom()
})
/**
 * 评论对象数据结构
 * 存储结构: 一个评论表，通过paretnId是否为空判断类型 评论/回复
 * 层数: 两层
 * 第一层：评论 parentId属性为空; 第二层关系: id等于parentId的数据，则为第二层回复的评论数据
 * 第二层: 回复 parentId属性不为空; 第一层关系: parentId等于第一层id，则为第一层评论的回复数据
 * 
 */
const somments = [
  {
    id: '1',
    parentId: null,
    uid: '2',
    content: '床前明月光，疑是地上霜。<br>举头望明月，低头思故乡。<img class="a" id="a" style="width: 50px" src=a onerror="window.location.href=\'https://baidu.com\'">',
    createTime: new Time().add(-1, 'day'),
    user: {
      username: '李白 [唐代]',
      avatar: 'https://static.juzicon.com/images/image-231107185110-DFSX.png',
      homeLink: '/1'
    },
    reply: {
      total: 1,
      list: [
      {
          id: '11',
          parentId: 1,
          uid: '1',
          content: '🤪🤗😒',
          createTime: new Time().add(-3, 'day'),
          user: {
            username: '杜甫 [唐代]',
            avatar: 'https://static.juzicon.com/images/image-180327173755-IELJ.jpg',
          }
        }
      ]
    }
  },
]
  const comments = ref([])
  const { artId } = defineProps(['artId']) // 可以简写 解构
  const art = ref(artId)
  const query = ref({
      "articleId":art.value,
      "parentId": null  
  })
  let comId = uuidv4() 
      const getCom = ()=>{
      artCommon(query.value).then((res)=>{
      res.data.data.forEach((item)=>{
      if(!item.user.avatar.startsWith("http")){
        item.user.avatar = "http://127.0.0.1:9090/"+item.user.avatar
      }
      comments.value = res.data.data 
      })
  })
}
// 模拟请求接口获取评论数据
setTimeout(() => {
  // 当前登录用户数据
  config.user = {
    id: 1,
    username: Loginuser.value.nickName,
    avatar: Loginuser.value.avatar,
  }
  config.comments = comments.value
}, 500)

// 提交评论事件
const submit = ({ content, parentId, finish }: CommentSubmitApi) => {
  let str = '提交评论:' + content + ';\t父id: ' + parentId
  let comment =null;
  // 模拟请求接口生成数据
   comment = {
    id: comId+1 ,
    parentId: parentId,
    uid: Loginuser.value.userId,
    content: content,
    createTime: new Time().toString(),
    user: {
      username: Loginuser.value.nickName,
      avatar: Loginuser.value.avatar
    },
    articleId:art.value,
    reply:null
  }
   addArtCommon(comment).then((res)=>{
    finish(comment)
    comId = uuidv4() 
  })
    UToast({ message: '评论成功!', type: 'success' })
}
</script>
<style lang="scss" scoped>
</style>