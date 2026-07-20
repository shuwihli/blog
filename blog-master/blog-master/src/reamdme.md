### [undraw-ui](https://github.com/readpage/undraw-ui)

### 后端逻辑书写异常
**问题描述**
我使用lamba语法 嵌套了一层foreach语法遍历两个不同的列表
再遍历内部的列表时候，我使用一个提前创建好的对象，再foreach语句内赋值后将他添加到了列表内，此时正常
**当内部循环执行到第二次的时候，先前用来赋值的对象也被改变，此时问题出现。
当改变了用来赋值的对象后，先前添加好的列表内，添加的对象数值也随之改变，造成了数据不准确**
解决方案：将创建对象的语句添加到了循环内部，使每一次添加到列表内的对象都不同。
问题来源：目前只是猜测。我添加到列表内的是同一个对象实例，再对该实例修改后，列表内的对象属性值也随之改变

```java 问题代码 
//havaParent.forEach(item -> {  
//    {  
//        topCommon.forEach(item1 -> {// item1 是所有顶级评论  
//            if (Objects.equals(item1.getId(), item.getParentId())) { // 和当前的子级评论进行比较  
//  
//                ArtCommonReplyList commonObjectReplay = new ArtCommonReplyList();//回复列表  
//                // 构造一个回复对象  
//                item1.getReply().setTotal(1);  
//                commonObjectReplay.setUId(item.getUId());  
//                commonObjectReplay.setCreateTime(item.getCreateTime());  
//                commonObjectReplay.setId(item.getId());  
//                commonObjectReplay.setParentId(item.getParentId());  
//                commonObjectReplay.setUser(item.getUser());  
//                commonObjectReplay.setContent(item.getContent());  
//                item1.getReply().getList().add(commonObjectReplay);  
//            }  
//        });  
//    }  
//});
```