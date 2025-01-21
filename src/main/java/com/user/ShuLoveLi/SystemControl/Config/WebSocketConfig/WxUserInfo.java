package com.user.ShuLoveLi.SystemControl.Config.WebSocketConfig;

import jakarta.websocket.*;
import jakarta.websocket.server.PathParam;
import jakarta.websocket.server.ServerEndpoint;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;

@ServerEndpoint("/wx/socket/{userId}")
@Component
@Slf4j
public class WxUserInfo {
    //静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。
    private static final AtomicInteger onlineCount = new AtomicInteger(0);
    //concurrent包的线程安全Set，用来存放每个客户端对应的WebSocket对象。
    private static final CopyOnWriteArraySet<WxUserInfo> webSocketSet = new CopyOnWriteArraySet<>();
    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    private static final Map<String, Session> sessions = new HashMap<String, Session>();
    private Session session;
    //接收sid
    private String userId = "";

    /**
     * 连接建立成功调用的方法
     */
    @OnOpen
    public void onOpen(Session session, @PathParam("userId") String userId) {
        this.session = session;
        webSocketSet.add(this);     // 加入set中
        this.userId = userId;
        sessions.put(userId, session);
        addOnlineCount();           // 在线数加1
        //            sendMessage("conn_success",Integer.valueOf(userId));
//            sendMessage(session.toString(),"0");
        log.info("有新客户端开始监听,sid=" + userId + ",当前在线人数为:" + getOnlineCount() + "session=" + session);
    }

    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose() {
        webSocketSet.remove(this);  // 从set中删除
        sessions.remove(userId);
        subOnlineCount();              // 在线数减1
        // 断开连接情况下，更新主板占用情况为释放
        log.info("释放的sid=" + userId + "的客户端");
        releaseResource();
    }

    private void releaseResource() {
        // 这里写释放资源和要处理的业务
        log.info("有一连接关闭！当前在线人数为" + getOnlineCount());
    }

    /**
     * 收到客户端消息后调用的方法
     *
     * @Param message 客户端发送过来的消息
     */
    @OnMessage
    public void onMessage(String message, Session session) throws IOException {
        session.getBasicRemote().sendText(message);
    }

    /**
     * 发生错误回调
     */
    @OnError
    public void onError(Session session, Throwable error) {
        log.error(session.getBasicRemote() + "客户端发生错误");
        error.printStackTrace();
    }

    /**
     * 实现服务器主动推送消息到 指定客户端
     */
    public void sendMessage(String message, Integer uuid) throws IOException {
        sessions.forEach((key, session) -> {
            key = key.substring(5).replace("\"", "");
            if (key.replace("sid", "").equals(String.valueOf(uuid))) { // 假设 Session 有一个 isActive() 方法
                log.info("推送消息{}", message);
                try {
                    session.getBasicRemote().sendText(message);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } else {
                log.info("Inactive session found with key:{},uuid = {}",key,uuid);
            }
        });
    }

    /**
     * 获取当前在线人数
     *
     * @return
     */
    public static int getOnlineCount() {
        return onlineCount.get();
    }

    /**
     * 当前在线人数 +1
     *
     * @return
     */
    public static void addOnlineCount() {
        onlineCount.getAndIncrement();
    }

    /**
     * 当前在线人数 -1
     *
     * @return
     */
    public static void subOnlineCount() {
        onlineCount.getAndDecrement();
    }

    /**
     * 获取当前在线客户端对应的WebSocket对象
     *
     * @return
     */
    public static CopyOnWriteArraySet<WxUserInfo> getWebSocketSet() {
        return webSocketSet;
    }
}
