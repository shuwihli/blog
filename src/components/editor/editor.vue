<template>
  <div style="border: 1px solid #ccc">
    <Toolbar
      style="border-bottom: 1px solid #ccc"
      :editor="editorRef"
      :defaultConfig="toolbarConfig"
      :mode="mode"
    />
    <Editor
      style="height: 500px; overflow-y: hidden;"
      v-model="valueHtml"
      :defaultConfig="editorConfig"
      :mode="mode"
      @onCreated="handleCreated"
    />
  </div>
</template>

<script setup>
import '@wangeditor/editor/dist/css/style.css' // 引入 css
import { onBeforeUnmount, ref, shallowRef, onMounted, defineExpose } from 'vue'
import { Editor, Toolbar } from '@wangeditor/editor-for-vue'
import { DomEditor } from '@wangeditor/editor'

// 编辑器实例，必须用 shallowRef
const editorRef = shallowRef()

// 内容 HTML
// const valueHtml = ref('<p>写点什么吧（文本两秒后消失）</p>')

// 模拟 ajax 异步获取内容
// onMounted(() => {  // 测试环境 不要了
//   setTimeout(() => {
//     valueHtml.value = '<p></p>'
//   }, 2500)
// })

const toolbarConfig = {}

const editorConfig = {
  placeholder: '请输入内容...',
  MENU_CONF: {}
}

editorConfig.MENU_CONF['uploadImage'] = {
  server: '/api/upload',
  fieldName: 'image',
}

// 组件销毁时，也及时销毁编辑器
onBeforeUnmount(() => {
  const editor = editorRef.value
  if (editor == null) return
  editor.destroy()
})

const handleCreated = (editor) => {
  editorRef.value = editor // 记录 editor 实例，重要！
}

const text = ref(
  {
    text:"",
    html:""
  }
)
// 定义一个方法，用于获取 HTML 内容
function getHtml() {
  text.value.html = editorRef.value ? editorRef.value.getHtml() : '';
  text.value.text = editorRef.value.getText();
  console.log(text.value);
  return text.value  
}
// 暴露方法给父组件
defineExpose({
  getHtml
})
</script>