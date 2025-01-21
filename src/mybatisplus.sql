/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80402
 Source Host           : localhost:3306
 Source Schema         : mybatisplus

 Target Server Type    : MySQL
 Target Server Version : 80402
 File Encoding         : 65001

 Date: 13/01/2025 00:34:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userId` int NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1431298257 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1431298269, 1, '<p><br></p><p>宝塔崩了还能找文件夹把数据导出来，这个崩了数据就基本没了</p><p>2024-07-11 09:01</p><p>6</p><p>回复</p><p><a href=\"https://space.bilibili.com/401680975\" target=\"_blank\">又菜又爱玩的小朱猪</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/comments/img/icons/up_pb.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>你应该说的是容器 一般重要数据一定要创建数据卷，比如将指定目录进行映射到容器而不是直接存进容器内，如果采用映射崩的话是不会影响映射的文件，肯定还是你配置上的问题。 另外这个面板应该是不会崩的，如果崩了所有服务也是基于容器，可能就是得手动管理。但是我到目前没有听说过包括我在内说1p面板崩了这种。</p><p>2024-07-11 15:00</p><p>7</p><p>回复</p><p>共 8 条回复，</p><p>点击查看</p><p><a href=\"https://space.bilibili.com/508607790\" target=\"_blank\">CF673CN</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_4.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p>docker下无法嵌套1pan容器</p><p>2024-07-12 02:16</p><p>回复</p><p><a href=\"https://space.bilibili.com/401680975\" target=\"_blank\">又菜又爱玩的小朱猪</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/comments/img/icons/up_pb.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>额 视频中应该说错了点 1p是独立运行在主机的服务，并不是在docker中运行。因为我之前听别人说1p面板运行在docker<img src=\"https://i0.hdslb.com/bfs/emote/c3043ba94babf824dea03ce500d0e73763bf4f40.png@40w_40h.avif\" alt=\"[笑哭]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/><img src=\"https://i0.hdslb.com/bfs/emote/c3043ba94babf824dea03ce500d0e73763bf4f40.png@40w_40h.avif\" alt=\"[笑哭]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-07-12 08:39</p><p>回复</p><p>共 2 条回复，</p><p>点击查看</p><p><a href=\"https://space.bilibili.com/5569982\" target=\"_blank\">ShadylHl</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_6.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p><img src=\"https://i0.hdslb.com/bfs/emote/c3043ba94babf824dea03ce500d0e73763bf4f40.png@40w_40h.avif\" alt=\"[笑哭]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/>有防火墙的docker推荐吗？WAF只能防web<img src=\"https://i0.hdslb.com/bfs/emote/c3043ba94babf824dea03ce500d0e73763bf4f40.png@40w_40h.avif\" alt=\"[笑哭]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-08-21 18:38</p><p>回复</p><p><a href=\"https://space.bilibili.com/97740051\" target=\"_blank\">崇光90</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_6.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p>看到了锤子v，之前更新特别多，现在更新少了，不过好多项目之前就介绍过<img src=\"https://i0.hdslb.com/bfs/emote/3087d273a78ccaff4bb1e9972e2ba2a7583c9f11.png@40w_40h.avif\" alt=\"[doge]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-07-11 22:57</p><p>回复</p><p><a href=\"https://space.bilibili.com/23991388\" target=\"_blank\">纯禽男</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_6.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>他有几个月没更新了 不知道啥情况</p><p>2024-07-23 13:01</p><p>回复</p><p>共 2 条回复，</p><p>点击查看</p><p><a href=\"https://space.bilibili.com/617373271\" target=\"_blank\">帝塔伊思</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_4.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p>1Panel 太强了</p><p>2024-10-24 21:36</p><p>回复</p><p><a href=\"https://space.bilibili.com/4734447\" target=\"_blank\">A大坏蛋</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_6.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p>支持一下up<img src=\"https://i0.hdslb.com/bfs/emote/1597302b98827463f5b75c7cac1f29ea6ce572c4.png@40w_40h.avif\" alt=\"[给心心]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-07-10 20:46</p><p>5</p><p>回复</p><p>UP主觉得很赞</p><p><a href=\"https://space.bilibili.com/401680975\" target=\"_blank\">又菜又爱玩的小朱猪</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/comments/img/icons/up_pb.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>感谢支持<img src=\"https://i0.hdslb.com/bfs/emote/8a10a4d73a89f665feff3d46ca56e83dc68f9eb8.png@40w_40h.avif\" alt=\"[喜欢]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/><img src=\"https://i0.hdslb.com/bfs/emote/bf7e00ecab02171f8461ee8cf439c73db9797748.png@40w_40h.avif\" alt=\"[脱单doge]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-07-10 21:40</p><p>回复</p><p><a href=\"https://space.bilibili.com/324837938\" target=\"_blank\">MAXAmazing</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p>原始粉丝</p><p><br></p><p>UP主加油！看好你噢~</p><p>2024-11-14 11:31</p><p>回复</p><p><a href=\"https://space.bilibili.com/617373271\" target=\"_blank\">帝塔伊思</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_4.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p><a href=\"https://search.bilibili.com/all?from_source=webcommentline_search&keyword=1Panel&seid=17346271481616298091\" target=\"_blank\"><img src=\"https://i0.hdslb.com/bfs/reply/9f3ad0659e84c96a711b88dd33f4bc2e945045e0.png\" alt=\"\" data-href=\"\" style=\"width: var(--icon-width);height: var(--icon-height);\"/>1Panel</a> yyds，秒杀某塔。</p><p>2024-10-02 20:32</p><p>1</p><p>回复</p><p><a href=\"https://space.bilibili.com/68056657\" target=\"_blank\">蛋要酷</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>还有dpanel，去看看</p><p>2024-12-24 23:01</p><p>回复</p><p>没有更多评论</p><p><br></p>', '评论list', '2025-01:12');
INSERT INTO `article` VALUES (1431298270, 1, '<p><br></p><p><img src=\"http://127.0.0.1:9090/44127ccf-2fa0-404c-8c8b-f25f22e8c377.png\" alt=\"\" data-href=\"\" style=\"width: 30%;\"/>宝塔崩了还能找文件夹把数据导出来，这个崩了数据就基本没了</p><p>2024-07-11 09:01</p><p>6</p><p>回复</p><p><a href=\"https://space.bilibili.com/401680975\" target=\"_blank\">又菜又爱玩的小朱猪</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/comments/img/icons/up_pb.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>你应该说的是容器 一般重要数据一定要创建数据卷，比如将指定目录进行映射到容器而不是直接存进容器内，如果采用映射崩的话是不会影响映射的文件，肯定还是你配置上的问题。 另外这个面板应该是不会崩的，如果崩了所有服务也是基于容器，可能就是得手动管理。但是我到目前没有听说过包括我在内说1p面板崩了这种。</p><p>2024-07-11 15:00</p><p>7</p><p>回复</p><p>共 8 条回复，</p><p>点击查看</p><p><a href=\"https://space.bilibili.com/508607790\" target=\"_blank\">CF673CN</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_4.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p>docker下无法嵌套1pan容器</p><p>2024-07-12 02:16</p><p>回复</p><p><a href=\"https://space.bilibili.com/401680975\" target=\"_blank\">又菜又爱玩的小朱猪</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/comments/img/icons/up_pb.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>额 视频中应该说错了点 1p是独立运行在主机的服务，并不是在docker中运行。因为我之前听别人说1p面板运行在docker<img src=\"https://i0.hdslb.com/bfs/emote/c3043ba94babf824dea03ce500d0e73763bf4f40.png@40w_40h.avif\" alt=\"[笑哭]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/><img src=\"https://i0.hdslb.com/bfs/emote/c3043ba94babf824dea03ce500d0e73763bf4f40.png@40w_40h.avif\" alt=\"[笑哭]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-07-12 08:39</p><p>回复</p><p>共 2 条回复，</p><p>点击查看</p><p><a href=\"https://space.bilibili.com/5569982\" target=\"_blank\">ShadylHl</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_6.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p><img src=\"https://i0.hdslb.com/bfs/emote/c3043ba94babf824dea03ce500d0e73763bf4f40.png@40w_40h.avif\" alt=\"[笑哭]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/>有防火墙的docker推荐吗？WAF只能防web<img src=\"https://i0.hdslb.com/bfs/emote/c3043ba94babf824dea03ce500d0e73763bf4f40.png@40w_40h.avif\" alt=\"[笑哭]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-08-21 18:38</p><p>回复</p><p><a href=\"https://space.bilibili.com/97740051\" target=\"_blank\">崇光90</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_6.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p>看到了锤子v，之前更新特别多，现在更新少了，不过好多项目之前就介绍过<img src=\"https://i0.hdslb.com/bfs/emote/3087d273a78ccaff4bb1e9972e2ba2a7583c9f11.png@40w_40h.avif\" alt=\"[doge]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-07-11 22:57</p><p>回复</p><p><a href=\"https://space.bilibili.com/23991388\" target=\"_blank\">纯禽男</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_6.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>他有几个月没更新了 不知道啥情况</p><p>2024-07-23 13:01</p><p>回复</p><p>共 2 条回复，</p><p>点击查看</p><p><a href=\"https://space.bilibili.com/617373271\" target=\"_blank\">帝塔伊思</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_4.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p>1Panel 太强了</p><p>2024-10-24 21:36</p><p>回复</p><p><a href=\"https://space.bilibili.com/4734447\" target=\"_blank\">A大坏蛋</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_6.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p>支持一下up<img src=\"https://i0.hdslb.com/bfs/emote/1597302b98827463f5b75c7cac1f29ea6ce572c4.png@40w_40h.avif\" alt=\"[给心心]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-07-10 20:46</p><p>5</p><p>回复</p><p>UP主觉得很赞</p><p><a href=\"https://space.bilibili.com/401680975\" target=\"_blank\">又菜又爱玩的小朱猪</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/comments/img/icons/up_pb.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>感谢支持<img src=\"https://i0.hdslb.com/bfs/emote/8a10a4d73a89f665feff3d46ca56e83dc68f9eb8.png@40w_40h.avif\" alt=\"[喜欢]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/><img src=\"https://i0.hdslb.com/bfs/emote/bf7e00ecab02171f8461ee8cf439c73db9797748.png@40w_40h.avif\" alt=\"[脱单doge]\" data-href=\"\" style=\"width: 1.4em;height: 1.4em;\"/></p><p>2024-07-10 21:40</p><p>回复</p><p><a href=\"https://space.bilibili.com/324837938\" target=\"_blank\">MAXAmazing</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p>原始粉丝</p><p><br></p><p>UP主加油！看好你噢~</p><p>2024-11-14 11:31</p><p>回复</p><p><a href=\"https://space.bilibili.com/617373271\" target=\"_blank\">帝塔伊思</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_4.svg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><p><a href=\"https://search.bilibili.com/all?from_source=webcommentline_search&keyword=1Panel&seid=17346271481616298091\" target=\"_blank\"><img src=\"https://i0.hdslb.com/bfs/reply/9f3ad0659e84c96a711b88dd33f4bc2e945045e0.png\" alt=\"\" data-href=\"\" style=\"width: var(--icon-width);height: var(--icon-height);\"/>1Panel</a> yyds，秒杀某塔。</p><p>2024-10-02 20:32</p><p>1</p><p>回复</p><p><a href=\"https://space.bilibili.com/68056657\" target=\"_blank\">蛋要酷</a></p><p><img src=\"https://i0.hdslb.com/bfs/seed/jinkela/short/webui/user-profile/img/level_5.svg\" alt=\"\" data-href=\"\" style=\"\"/> </p><p>还有dpanel，去看看</p><p>2024-12-24 23:01</p><p>回复</p><p>没有更多评论</p><p><br></p>', '', '2025-01:12');
INSERT INTO `article` VALUES (1431298271, 2, '<p><img src=\"http://127.0.0.1:9090/789a1940-931f-46f2-b34e-434a7fe1ccf8.jpeg\" alt=\"\" data-href=\"\" style=\"\"/></p>', '', '2025-01:12');
INSERT INTO `article` VALUES (1431298272, 2, '<p>大海，你全是水！</p>', '海之吟', '2025-01:12');
INSERT INTO `article` VALUES (1431298273, 2, '<p><img src=\"http://127.0.0.1:9090/5290adbb-3df3-4b58-a78d-33c182c3f9ff.jpeg\" alt=\"\" data-href=\"\" style=\"\"/><img src=\"http://127.0.0.1:9090/f15ac34b-b456-44a1-9d33-3a8610f5ffd8.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', '', '2025-01:12');

-- ----------------------------
-- Table structure for article_image
-- ----------------------------
DROP TABLE IF EXISTS `article_image`;
CREATE TABLE `article_image`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `article_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_image
-- ----------------------------
INSERT INTO `article_image` VALUES (1, 'D:/upload/d6ecdb62-6230-4af8-bd84-ef9c9bfd4ddb.jpg', 1);
INSERT INTO `article_image` VALUES (2, 'D:/upload/818808f2-a114-42ce-8804-81bfbe9ff87b.jpg', 1);
INSERT INTO `article_image` VALUES (3, 'D:/upload/1bc422c0-75a9-4f4c-a675-3108b9051588.jpg', 1);
INSERT INTO `article_image` VALUES (4, 'D:/upload/1053a2eb-7245-42d4-80e4-959038ccd649.jpg', 1);
INSERT INTO `article_image` VALUES (5, 'D:/n61d1996f-f971-4beb-911f-43ffeb2f8413.jpg', 1);
INSERT INTO `article_image` VALUES (6, 'D:/n9b7eb1e9-08fa-4f9f-b6d0-9670b64eae4e.jpg', 1);
INSERT INTO `article_image` VALUES (7, 'D:/n/a5eb04d0-309f-4407-907c-137735f85854.jpg', 1);
INSERT INTO `article_image` VALUES (8, 'D:/n/bcbc6460-a794-4f54-9ee3-ca0feeee8c30.jpg', 1);
INSERT INTO `article_image` VALUES (9, 'RDovdXBsb2FkLzE5YTM3NmRjLTg5NjMtNDliNC1hNmU3LWM4ZWZlMGE4YTBjMC5qcGc=', 1);
INSERT INTO `article_image` VALUES (10, 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAK9JREFUOE/Nk+sRwiAQhJdOTCVqJ6aSxErUSiSVhE4MqxyD5Hj4z5vJEDj4Zu9l8LEDgDX8l5ard8y504SDE4AngLPyekru7CA5QPYp5xY2fEyVX5BfAGMSaoT0ApijR5IvhsVwbQ/gAkDyIKER2A3QqvKqAVgRfppZyvaKqgBKPhYAi0/kvQWQxhKGU2BVBaw7VYhpvVEFNDr67f5jgDZMWkgyeLETe8Y5Bw0+2W4DsZA3Ebi8wv8AAAAASUVORK5CYII=', 1);
INSERT INTO `article_image` VALUES (11, 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAK9JREFUOE/Nk+sRwiAQhJdOTCVqJ6aSxErUSiSVhE4MqxyD5Hj4z5vJEDj4Zu9l8LEDgDX8l5ard8y504SDE4AngLPyekru7CA5QPYp5xY2fEyVX5BfAGMSaoT0ApijR5IvhsVwbQ/gAkDyIKER2A3QqvKqAVgRfppZyvaKqgBKPhYAi0/kvQWQxhKGU2BVBaw7VYhpvVEFNDr67f5jgDZMWkgyeLETe8Y5Bw0+2W4DsZA3Ebi8wv8AAAAASUVORK5CYII=', 1);
INSERT INTO `article_image` VALUES (12, 'D:/upload/69641cb9-0ef8-4e6b-b09f-4f602ddf9c81.png', 1);
INSERT INTO `article_image` VALUES (13, 'e443d74f-87c9-4b7b-bcd0-dc521497d1bc.png', 1);
INSERT INTO `article_image` VALUES (14, 'c0f365cd-26e6-498d-bdf9-dfd718ce805f.png', 1);
INSERT INTO `article_image` VALUES (15, '22912486-9853-447b-ac4f-0dcb3b815a26.png', 1);
INSERT INTO `article_image` VALUES (16, '/api/file/0f6dcd5b-2684-475f-81ab-cc166e745abc.png', 1);
INSERT INTO `article_image` VALUES (17, '/api/file/**96fa6b32-0b47-44e3-8ccb-bedb34fbcae9.png', 1);
INSERT INTO `article_image` VALUES (18, '/api/file/401b0213-947e-4ced-9737-9e7051eef5ae.png', 1);
INSERT INTO `article_image` VALUES (19, '/api/file/**676cb408-74cd-44a1-9890-59390c99b602.png', 1);
INSERT INTO `article_image` VALUES (20, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\imageffbcae18-ea07-47cb-a48a-96c276dcdfca.jpeg', 1);
INSERT INTO `article_image` VALUES (21, 'nulla6916280-bf37-4b09-839c-b203a5330b3e.jpeg', 1);
INSERT INTO `article_image` VALUES (22, 'null95839017-600f-4593-a6a8-b27faa05643c.jpeg', 1);
INSERT INTO `article_image` VALUES (23, 'null07ea75f9-2fa2-4fa8-9788-02cefe7ce911.jpeg', 1);
INSERT INTO `article_image` VALUES (24, 'null4ca010cd-f504-4e74-8fed-d9641ccbd3ef.jpeg', 1);
INSERT INTO `article_image` VALUES (25, 'nulld15db96e-ee09-4998-9395-2dab61a8730f.jpeg', 1);
INSERT INTO `article_image` VALUES (26, 'null881902bc-6353-4a6d-81cb-3d9340b27aa7.jpeg', 1);
INSERT INTO `article_image` VALUES (27, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image58cc09a9-5ccd-4e4d-8470-4830950ab6dc.jpeg', 1);
INSERT INTO `article_image` VALUES (28, 'null3a0dc37a-918e-4904-bbdc-6e893c39910d.jpeg', 1);
INSERT INTO `article_image` VALUES (29, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\imagea9ac88d9-9634-466b-ad12-40d5bc309140.jpeg', 1);
INSERT INTO `article_image` VALUES (30, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\94b8b59c-18a5-4412-9520-8a592b62caf1.jpeg', 1);
INSERT INTO `article_image` VALUES (31, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\31434503-6dd7-4db5-957c-240607bb9195.jpeg', 1);
INSERT INTO `article_image` VALUES (32, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\af7d39b8-c3b2-4a7a-93cc-3ae83d17cc99.jpeg', 1);
INSERT INTO `article_image` VALUES (33, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\4ef9d149-f8b4-4cb9-baea-8cbf154ad45a.jpeg', 1);
INSERT INTO `article_image` VALUES (34, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\8da1cb8f-69e1-49f2-918f-204820599fd1.jpeg', 1);
INSERT INTO `article_image` VALUES (35, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\9e8aa811-4a6e-4b9c-9b01-750b134f1865.jpeg', 1);
INSERT INTO `article_image` VALUES (36, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\eda3a854-e0f4-4e6a-b56a-6518cdaa238b.jpeg', 1);
INSERT INTO `article_image` VALUES (37, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\ff03f84b-f87c-42d5-b101-5c95710bfa64.png', 1);
INSERT INTO `article_image` VALUES (38, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\55243a75-2cf4-4c7e-b9cb-b9da7f78f0f6.png', 1);
INSERT INTO `article_image` VALUES (39, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\1fb919c3-8351-4b81-aac9-5270f2112eb5.png', 1);
INSERT INTO `article_image` VALUES (40, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\4e3789ee-4b2d-40d0-8e6f-629a6d150d13.png', 1);
INSERT INTO `article_image` VALUES (41, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\25a6b36d-47d4-43fc-83e9-44ddf066cf60.png', 1);
INSERT INTO `article_image` VALUES (42, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\657aed36-8edd-4c73-863f-f32ecc853003.jpeg', 1);
INSERT INTO `article_image` VALUES (43, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\f2e07554-db59-495a-9da1-76f040ebb6f8.jpeg', 1);
INSERT INTO `article_image` VALUES (44, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\e0155be7-5a30-4818-876a-145432c08baf.jpeg', 1);
INSERT INTO `article_image` VALUES (45, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\d1beb02a-cc0b-4db3-a763-fd548774a0c0.jpeg', 1);
INSERT INTO `article_image` VALUES (46, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\22a95539-95ec-4095-aa93-8f35c2601e7c.jpeg', 1);
INSERT INTO `article_image` VALUES (47, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\4b3d7528-3d33-45ff-ad21-0ac8d0b4a1a8.jpeg', 1);
INSERT INTO `article_image` VALUES (48, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\03ea1881-fea5-402b-adfc-c2e69a7d93e2.png', 1);
INSERT INTO `article_image` VALUES (49, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\f818c405-f777-48ed-92af-3d94072f0803.png', 1);
INSERT INTO `article_image` VALUES (50, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\93b12f93-4f5b-4d5f-9079-6d6a8e27ff83.png', 1);
INSERT INTO `article_image` VALUES (51, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\84157965-2559-45a1-8870-44bca3dd357d.png', 1);
INSERT INTO `article_image` VALUES (52, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\aa5d2710-678c-4fdd-a7e1-a0d50c36ec76.jpeg', 1);
INSERT INTO `article_image` VALUES (53, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\image\\1af68d74-b49a-4650-8894-8535b16a65c9.png', 1);
INSERT INTO `article_image` VALUES (54, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\e267c3d0-a49d-4dff-b7b2-21a344f49d09.jpeg', 1);
INSERT INTO `article_image` VALUES (55, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\cbed431c-fb25-4552-8759-8b28cad43252.png', 1);
INSERT INTO `article_image` VALUES (56, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\a0cec530-3cde-4e87-b24a-826bc264394a.jpeg', 1);
INSERT INTO `article_image` VALUES (57, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\82ab561d-bc08-4992-842d-05641ee5111b.png', 1);
INSERT INTO `article_image` VALUES (58, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\a0c3d2d6-bddc-4e31-87aa-79c85e994210.jpeg', 1);
INSERT INTO `article_image` VALUES (59, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\d19b2935-edd4-43c8-9cb2-2855386b0715.png', 1);
INSERT INTO `article_image` VALUES (60, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\33175078-d88c-49bd-a04b-8995d2c87330.png', 1);
INSERT INTO `article_image` VALUES (61, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\ce71fb68-f9dc-43b6-92a5-be4bb140f83e.png', 1);
INSERT INTO `article_image` VALUES (62, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\1272a0f2-9167-4e26-b255-66d4b8921946.png', 1);
INSERT INTO `article_image` VALUES (63, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\7025b26f-4148-47cf-a14d-e176386a5b62.png', 1);
INSERT INTO `article_image` VALUES (64, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\4293754d-79dd-4ed4-bbc1-a02512618102.png', 1);
INSERT INTO `article_image` VALUES (65, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\65f65aca-dfa7-4036-a736-41a8a8371a18.png', 1);
INSERT INTO `article_image` VALUES (66, 'D:\\IntelliJ IDEA 2023.2.2\\SpringBoot\\blog\\blog\\src\\main\\resources\\static\\9851dfae-5f5d-4b6e-b7c7-924dbf4305ba.png', 1);
INSERT INTO `article_image` VALUES (67, 'C:\\Users\\lmclm\\Pictures\\ProjectImgf214aba9-19c0-4730-8a42-e1e2ab253973.png', 1);
INSERT INTO `article_image` VALUES (68, 'C:\\Users\\lmclm\\Pictures\\ProjectImg8341d489-2fb0-4d16-9ef4-391b01a552d4.png', 1);
INSERT INTO `article_image` VALUES (69, 'C:\\Users\\lmclm\\Pictures\\ProjectImg36405b44-6d9e-4a27-a7bb-594da74ea93d.png', 1);
INSERT INTO `article_image` VALUES (70, 'C:\\Users\\lmclm\\Pictures\\ProjectImge94b5cf3-c218-4e8e-bce0-7a20761b1a55.jpeg', 1);
INSERT INTO `article_image` VALUES (71, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\a2c9e00a-367c-4912-a1a8-386341c3a636.jpeg', 1);
INSERT INTO `article_image` VALUES (72, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\5b9e02a2-8213-44f5-8d7c-c92bfe8156e5.png', 1);
INSERT INTO `article_image` VALUES (73, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\f7db83ba-1641-45d2-886e-6ab8018763da.png', 1);
INSERT INTO `article_image` VALUES (74, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\c6c1c960-83e0-490c-84d2-4cd15b516fa5.png', 1);
INSERT INTO `article_image` VALUES (75, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\5708dff6-fb75-4053-8412-3539168cd63c.png', 1);
INSERT INTO `article_image` VALUES (76, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\80a6e397-af8c-4345-8649-91e5581acdfa.png', 1);
INSERT INTO `article_image` VALUES (77, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\c2bed3c7-8efa-441a-a7fe-83942b6cd28e.png', 1);
INSERT INTO `article_image` VALUES (78, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\cd875e2c-2c34-420c-b05b-1c5fc5c76cb2.png', 1);
INSERT INTO `article_image` VALUES (79, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\0d2c0c2c-d666-413f-aa51-b4e9b9de62ff.png', 1);
INSERT INTO `article_image` VALUES (80, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\c4cf32fd-853d-40bd-8ebd-a70bdfc652c1.png', 1);
INSERT INTO `article_image` VALUES (81, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\a74b04df-d9bf-4aa9-b7b7-317b4685707d.png', 1);
INSERT INTO `article_image` VALUES (82, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\f7f9a755-4b3b-4aec-8d4d-e8cd605003b6.png', 1);
INSERT INTO `article_image` VALUES (83, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\de6ce13a-a8fd-4045-a147-1a10107e7cfd.png', 1);
INSERT INTO `article_image` VALUES (84, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\7d194825-bcec-4e40-ac0a-6eec31ee628a.png', 1);
INSERT INTO `article_image` VALUES (85, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\b8a02af4-979f-4e5e-96e6-a0f000c98d86.png', 1);
INSERT INTO `article_image` VALUES (86, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\04c31af2-f32e-4678-b1fa-a01df21b01fe.png', 1);
INSERT INTO `article_image` VALUES (87, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\88cde4ca-e375-4859-b828-17dc42232439.png', 1);
INSERT INTO `article_image` VALUES (88, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\c2389cdf-3ba2-467e-a837-71f0995279f1.png', 1);
INSERT INTO `article_image` VALUES (89, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\e4078f69-85e4-423e-85aa-9b51db6d4ad6.png', 1);
INSERT INTO `article_image` VALUES (90, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\c8af42dc-67c1-437e-bb46-558f4f1f4725.jpeg', 1);
INSERT INTO `article_image` VALUES (91, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\7220e070-6424-48e4-b6cc-74076621c666.jpeg', 1);
INSERT INTO `article_image` VALUES (92, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\2d64770b-db58-4805-9201-15bc24331e32.jpeg', 1);
INSERT INTO `article_image` VALUES (93, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\f669c5f0-5b9f-4e04-bf80-cc4100adeaf1.jpeg', 1);
INSERT INTO `article_image` VALUES (94, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\dd825ac7-afef-421f-b34c-b70bdbb2701a.webp', 1);
INSERT INTO `article_image` VALUES (95, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\987f0ab3-e612-4fd7-98a8-2ee64b8e2f0f.webp', 1);
INSERT INTO `article_image` VALUES (96, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\2d1b38cb-5b7a-4d22-88c0-07064582f769.jpeg', 1);
INSERT INTO `article_image` VALUES (97, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\729a4de2-ea8b-4781-a81a-75001ff3cea8.webp', 1);
INSERT INTO `article_image` VALUES (98, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\d517c1c3-3f14-4f21-927d-bc40d43f6cc7.webp', 1);
INSERT INTO `article_image` VALUES (99, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\94862481-3028-4257-b02e-da8d316f7ba1.webp', 1);
INSERT INTO `article_image` VALUES (100, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\906e06a3-c023-4ece-912e-d985d117ff22.webp', 1);
INSERT INTO `article_image` VALUES (101, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\2f0f7985-dcb2-49b2-9755-bbc299c473c6.webp', 1);
INSERT INTO `article_image` VALUES (102, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\1084c5b8-4113-42cd-aa21-37740f96101b.webp', 1);
INSERT INTO `article_image` VALUES (103, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\4464773a-d47c-44d0-8ea5-a5c381e881bb.webp', 1);
INSERT INTO `article_image` VALUES (104, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\5716c6c6-2e2d-4654-92f5-dddb662bb8d8.webp', 1);
INSERT INTO `article_image` VALUES (105, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\ab78dd24-de25-4072-8508-afd170879e5a.webp', 1);
INSERT INTO `article_image` VALUES (106, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\ccdb8cc1-57b4-461d-b146-7c856bf601a3.webp', 1);
INSERT INTO `article_image` VALUES (107, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\9c327e0c-2e05-4619-9d18-2b9d535c61bf.webp', 1);
INSERT INTO `article_image` VALUES (108, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\a9db3f8a-d566-48af-a6ec-9d2294707855.webp', 1);
INSERT INTO `article_image` VALUES (109, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\4cea92c8-de66-447c-b427-1d70e78119ae.webp', 1);
INSERT INTO `article_image` VALUES (110, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\6143e051-b172-4197-82bb-465691bbbe77.jpeg', 1);
INSERT INTO `article_image` VALUES (111, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\d94b2c7d-5bf8-4629-893d-5918eaef164d.webp', 1);
INSERT INTO `article_image` VALUES (112, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\f5119e04-af7d-4c65-902e-703915266ae3.webp', 1);
INSERT INTO `article_image` VALUES (113, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\3b7168fb-2efc-43c0-950b-925a542cdd74.webp', 1);
INSERT INTO `article_image` VALUES (114, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\52981fc3-9d83-4167-8911-38d4dd578346.webp', 1);
INSERT INTO `article_image` VALUES (115, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\3bc1ded2-ede3-431c-afa1-3b07e072cabc.webp', 1);
INSERT INTO `article_image` VALUES (116, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\16f7ff41-8587-4460-9424-10a5d69bf229.webp', 1);
INSERT INTO `article_image` VALUES (117, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\d24469ce-ef51-4456-a0cb-e84367e91319.webp', 1);
INSERT INTO `article_image` VALUES (118, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\1b397f8b-3b85-4e33-a760-18119e3a44c4.webp', 1);
INSERT INTO `article_image` VALUES (119, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\39287f7d-ba04-45f6-b08c-bfe64798f15c.webp', 1);
INSERT INTO `article_image` VALUES (120, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\96fd432e-0f1f-41b1-8458-0048e00cdb9e.webp', 1);
INSERT INTO `article_image` VALUES (121, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\8ea101e6-2f6e-4fbe-b5bf-7efa160c9603.webp', 1);
INSERT INTO `article_image` VALUES (122, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\d1eb6ef8-2f7f-4b32-912a-924f289ace37.webp', 1);
INSERT INTO `article_image` VALUES (123, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\0bb324a8-fbff-4bf6-b498-cf330c893ed2.webp', 1);
INSERT INTO `article_image` VALUES (124, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\a098de9a-bfa6-4fbb-9e9c-78db32732a65.png', 1);
INSERT INTO `article_image` VALUES (125, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\6d9c3249-4e13-4531-ac2c-310cb37fb754.png', 1);
INSERT INTO `article_image` VALUES (126, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\42559d2c-9e25-4649-8e87-e670c6e422e1.jpeg', 1);
INSERT INTO `article_image` VALUES (127, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\d22bfa65-c6ce-48be-9461-cb4ef214abaa.jpeg', 1);
INSERT INTO `article_image` VALUES (128, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\c677a7c4-3d28-448e-8e90-edfa7d39600b.jpeg', 1);
INSERT INTO `article_image` VALUES (129, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\48ce542f-9db4-4b5f-b4a0-8b82669b30f6.jpeg', 1);
INSERT INTO `article_image` VALUES (130, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\1e12cede-59b5-4b32-8bd9-3282d01105f8.jpeg', 1);
INSERT INTO `article_image` VALUES (131, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\84869f85-262c-4ac5-866b-ac57b6bb8707.jpeg', 1);
INSERT INTO `article_image` VALUES (132, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\7921dffe-0eeb-45fb-b789-c872f1a6c990.jpeg', 1);
INSERT INTO `article_image` VALUES (133, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\8450e224-8124-414a-a346-a19fc9bc4075.jpeg', 1);
INSERT INTO `article_image` VALUES (134, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\13294f4e-668a-4689-9073-ab6f1cfddf34.jpeg', 1);
INSERT INTO `article_image` VALUES (135, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\bd175dba-def4-4ca5-b508-cf2de36579b3.jpeg', 1);
INSERT INTO `article_image` VALUES (136, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\e023a385-0674-498c-8c9e-237bbe5a5938.jpeg', 1);
INSERT INTO `article_image` VALUES (137, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\79cfd619-2ed1-4cb4-ab59-5fd07a8d4c20.jpeg', 1);
INSERT INTO `article_image` VALUES (138, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\aba018f6-0a9d-4a07-8f14-31cd7dc038df.jpeg', 1);
INSERT INTO `article_image` VALUES (139, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\7673cf8b-8f0a-4ce8-932d-3a7b26933983.jpeg', 1);
INSERT INTO `article_image` VALUES (140, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\ec5193fb-e1db-482c-b26b-1726f4ac7945.jpeg', 1);
INSERT INTO `article_image` VALUES (141, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\b5d615ee-d314-4c23-9026-a5ba34f591fc.jpeg', 1);
INSERT INTO `article_image` VALUES (142, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\202644df-ed03-4081-9d89-a321d20a536a.jpeg', 1);
INSERT INTO `article_image` VALUES (143, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\dcc1c715-3a5e-41a5-89d2-c980ec802a62.jpeg', 1);
INSERT INTO `article_image` VALUES (144, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\f8a34806-c73a-407a-901e-4ef25d52da00.jpeg', 1);
INSERT INTO `article_image` VALUES (145, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\8e46572a-6926-455c-91bc-5b8ea5c79a56.jpeg', 1);
INSERT INTO `article_image` VALUES (146, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\44127ccf-2fa0-404c-8c8b-f25f22e8c377.png', 1);
INSERT INTO `article_image` VALUES (147, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\789a1940-931f-46f2-b34e-434a7fe1ccf8.jpeg', 1);
INSERT INTO `article_image` VALUES (148, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\5290adbb-3df3-4b58-a78d-33c182c3f9ff.jpeg', 1);
INSERT INTO `article_image` VALUES (149, 'C:\\Users\\lmclm\\Pictures\\ProjectImg\\f15ac34b-b456-44a1-9d33-3a8610f5ffd8.png', 1);

-- ----------------------------
-- Table structure for heat
-- ----------------------------
DROP TABLE IF EXISTS `heat`;
CREATE TABLE `heat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NULL DEFAULT NULL,
  `views` int NULL DEFAULT NULL,
  `hot` int NULL DEFAULT NULL,
  `thumbs_up` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of heat
-- ----------------------------
INSERT INTO `heat` VALUES (1, 1, 123, 6, 21);
INSERT INTO `heat` VALUES (2, 1431298236, 9999, 99999, 43543);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `authorities` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pass_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'ROLE_ADMIN', '管理员', '1', '晴天第一霹雳手11', 'admin123', 'aa.jpeg');
INSERT INTO `user` VALUES (2, 'user', 'ROLR_USER', '普通', '1', '去', 'user123', 'a.bmp');
INSERT INTO `user` VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
