/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : log

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2015-12-19 20:20:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `blogId` int(11) NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`blogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('3', '风过无痕', '2015-12-19 15:11:11', '<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">如若<a style=\"color: #3c3c3c; text-decoration: none;\" href=\"http://www.suibi8.com/article/dongtian/\">冬天</a>也有花开，那肯定是我来不及封订的诺，如果风吹落的是一眼的寂寞，那肯定是我再次把你想起。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">&mdash;&mdash;题记</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">永远<a style=\"color: #3c3c3c; text-decoration: none;\" href=\"http://www.suibi8.com/article/jide/\">记得</a>，那是个浅浅的夏日，柔软的风抚摸着柳梢，一朵惹人的花枝招展，穿过细细落落的雨，靠近我的灵魂，也迷惑了我的灵魂。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">纵然相遇是一次不能闪躲的错，我无能无力，面对潮涌而来的鸿波。即便是曾经醉痴的如深陷无底的沼泽，也希望冷风唤醒并吹散魂魄，然后忘我，这样你就会走的毫无牵挂。因为你似乎平静的跟我说，你不再想起我。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">我眼里盈着微笑，泪在心里烫着。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">中冬的早晨，因为空旷而显得洒脱，张扬干净，我在河岸上游走，踩着突兀着任性硬实到骨感的土地，迎面袭来锐利的薄薄的风动，那是一股凉透到骨髓的气息，钻进鼻腔却清澈而敞亮。河面上结了冰封，反射起刺眼的芒，抬头眺望，那一轮骄傲的晨曦散洒着暖暖的光缕，原来早已被萧条困扰的颓废不堪的野，竟然也有了些潮流。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\"><a style=\"color: #3c3c3c; text-decoration: none;\" href=\"http://www.suibi8.com/suibi/xinqing/\">心情</a>忽然变得雀跃起来，似乎有嚎一嗓子的冲动在意念中怂恿，裂开嘴淡淡的笑了笑，摇摇头。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">都说有你才有晴天，既然你脱离了我的世界，既然我独自缠绵，和孤独偎依的我也要丰满，任由灵魂摆渡在苍茫中的遥远。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">日子早已是浓浓的烈酒，在温和的阳光午巷，淡定的我，浅啄一杯清茶，偶尔品一味唯美的记忆，或者，在无眠的夜深，把一盏灯光，放浪相思，与月光约醉。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">&nbsp;</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">曾几徘徊在冬日的雨里，寂寞是天空垂挂的泪，爱了那么久，还是一个人走，一个人的憔悴，转身的时候才知道从不曾真正拥有。斟一杯忘情的酒，多想别只让我独醉。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">我是一条寻找爱情的鱼，在无水的河床上煎熬的行走。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">莫说你欠我一滴泪来世赎回，莫说无悔。</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; text-indent: 2em; font-family: 宋体; font-size: 14px; line-height: 28px;\">轻轻转身，风过无痕。</p>');
INSERT INTO `blog` VALUES ('4', '关于存在在我眼前的你的一切', '2015-12-19 17:15:38', '<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">一&nbsp;<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gyw/\" target=\"_blank\">我</a>记得有一回同你开视频，你大概是听见敲键盘的声音，就问我在做什么，我大概是说了学生会新闻稿之类的话。记不清你是不是骂了我了，只记得你打字说：听我的 不要去加什么社团 学生会 团委 多看书 多出去走走 好好学习 好好学做饭。现在想来，其实那个时候我还是挺<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gykx/\" target=\"_blank\">开心</a>的。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　二 我记得那个时候是直接挂掉了你的电话，而你大概是头一回的没有骂我、不理我，还捎了短信问我是不是不方便，又说可以理解什么的。我就很感慨你怎么变得这么好说话了。你说：其实我是个做事特别急 但脾气特别好的人。现在想来，我觉得你有时候还是挺<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/sz/%E5%8F%AF%E7%88%B1\" target=\"_blank\">可爱</a>的。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　三 我记得有一回在人人上分享了篇<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/sz/%E5%85%B3%E4%BA%8E\" target=\"_blank\">关于</a>小组面试的文章，你难得一次地给我留言说：你现在看这个有点早 还是分享<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/sz/%E8%87%AA%E5%B7%B1\" target=\"_blank\">自己</a>觉得有用的东西比较靠谱。我大概是问了你些什么，你简单解释了下就让我给你电话。已经记不清到底说了些什么了，总之是社联竞选说起要进行答辩和无领导小组讨论，于是我想起你来。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　四 我记得有一回你让我去读读《论诱惑》，你大概是不知道吧，我把你提到过的看过的所有的书都翻出来读过。管理学的，心理学的，乱七八糟的。后来人人上有个类似于写出手头上最近一本书某一页某一行一句话的游戏。那个时候我愣是兴冲冲地翻开放在床边的书，看见和你一样的句子，就觉得特别的有意思。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　五 我记得你<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/sz/%E5%96%9C%E6%AC%A2\" target=\"_blank\">喜欢</a>看<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/sz/%E7%94%B5%E5%BD%B1\" target=\"_blank\">电影</a>，偶尔听些类似民谣的曲子，喜欢旅行，还算喜欢读书，点点文艺青年的样子。很热<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gya/\" target=\"_blank\">爱</a>你所生活的城市，喜欢精致一点地过日子，工作上很优秀也很认真，虽然偶尔会抱怨。喜欢简单而直接的沟通方式，不喜欢拖泥带水，不喜欢犹豫不果决，不喜欢肤浅幼稚、一问三不知的姑娘。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　六 我记得今年春节的时候我们整好有两个月不联系了。思前想后呢决定给你捎条短信，那种很直白的群发的祝福，不唐突也不会显得很特别。那个时候，所有人的回复都类似于感谢或者你也快乐，只有你说：把各位改成你 这条短信能更好一点。其实我是挺开心的，因为你总是不一样的。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　七 我记得是你让我去注册的人人，你让我去看看你的日志，去听听你的音乐，去了解你的性格与喜好。于是那个时候，我听见了朴树，听见了老狼，听见了李志，也听见了《南方》。其实也没什么，主要是做了一期关于民谣音乐的广播节目，讲到那些花儿，讲起达达乐队，于是我想起你来。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　八 &ldquo;我去重庆了&rdquo;&ldquo;工作? 五月<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/sz/%E5%BC%80%E5%A7%8B\" target=\"_blank\">开始</a>热起来了 很晒 不过今天下了雨 注意天气&rdquo;&ldquo;出差 周六回<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/sz/%E9%9D%92%E5%B2%9B\" target=\"_blank\">青岛</a>&rdquo;&ldquo;嗯好 那工作顺利 注意饮食 可能会挺辣的&rdquo;&mdash;&mdash;我甚至可以想象出所有的你会有的反应，然后客客气气地给出你最不可能再回复的答案&mdash;&mdash;尽管这会是我认识你十三个月以来，离你最近的距离。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　九 你问起我是不是删掉了你的人人，你说起你很喜欢重庆。&ldquo;其实要喝一点点酒才敢给你短信 然后告诉你 明天离开 一路顺风。&rdquo;你没有回我，我不知道该想什么。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　十 其实我很宅也算半个路痴，重庆好多地方都找不到。所以现在才知道你来时住的地方是我每个礼拜去学校的必经之路，距离我家也不过六点五公里。想起来去年附近的人告诉我我们只相距一百米，到后来一场误会，到你曾离我这么近。只可惜没有以后了。</p>');
INSERT INTO `blog` VALUES ('5', '牵绊一生，穿梭千年', '2015-12-19 17:17:47', '<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">愿君多采撷，此物最相思，若问情长久，直教人生死相随，不知今夕是何年，早已穿梭千年，始终牵绊一生。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　人生短暂，短短数十年，不知情为何滋味，只有亲自品尝它，才知酸甜苦辣万般生。也许是她太天真，心想着<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gysj/\" target=\"_blank\">时间</a>易逝，红颜易老，便不愿会<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gycuoguo/\" target=\"_blank\">错过</a>人间的甜苦，小心翼翼的应付着，自以为聪明的她犯了众多女孩都不会犯的错误，太不把感情当回事，自以为可以把感情玩弄于鼓掌之间，殊不知聪明反被聪明误，她一次一次因误会而放手，觉得时机<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gycs/\" target=\"_blank\">成熟</a>的她找到了分手的理由，那就是她真的爱上他了，他开始影响到她的<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gysh/\" target=\"_blank\">生活</a>和学业的正常活动，她假借他人之口撒开了手，她做了一件直觉教会她做的事，那就是删掉他空间里她的留言。或许是他的一次次<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/kuanrong/\" target=\"_blank\">宽容</a>与<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gyng/\" target=\"_blank\">难过</a>使她难以放手，或许是他的一丝丝<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/zcdzw/\" target=\"_blank\">真诚</a>的眼光和失落的表情总是藏得不够就好，老是被她<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/faxian/\" target=\"_blank\">发现</a>，善良单纯的她只认为暂时的不放手会令他<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gykx/\" target=\"_blank\">开心</a>，于是就发生的反反复复的分手情节。</p>\r\n<p style=\"margin: 10px 0px 0px; padding: 0px; font-size: 14px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 30px; color: #333333;\">　　是他的太懒惰击败了这一切，她不喜欢懒懒的男孩子，因为她早已习惯了忙碌的生活，生活中可以没有惊喜，但不可以没有努力。于是他们分手了，但她还在<a style=\"margin: 0px; padding: 0px; text-decoration: none; color: #666666;\" href=\"http://zw.liuxue86.com/gydd/\" target=\"_blank\">等待</a>着他的改变，可他却始终不懂她的心思。她最终等来了他与另一个女孩的开始，有一天她翻看了他空间的日志，有一篇文章的意思教会人等得会等来有缘人，她始终相信没有千年的羁绊，他们不会在茫茫人海中相遇，他们的爱从千年前开始，进入无数次的旋转，交织，呈现这一幕幕的情节。她偷笑，他转头偷窥她，她假装不知道。他叫别的女孩儿追着他玩，逗她，她却以一句好戏看完了为借口掩饰，有一晚他待到很晚，教室里只剩下他和她。她脸红地跑了出去，只剩下鸭子叫的他。</p>');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `photoId` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`photoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', 'upload/firmuserPicture/1450515853471_2015-12-19-05-04-13.png');
INSERT INTO `photo` VALUES ('2', 'upload/firmuserPicture/1450515853478_2015-12-19-05-04-13.jpeg');
INSERT INTO `photo` VALUES ('3', 'upload/firmuserPicture/1450515853483_2015-12-19-05-04-13.jpg');
INSERT INTO `photo` VALUES ('4', 'upload/firmuserPicture/1450515853490_2015-12-19-05-04-13.jpg');
INSERT INTO `photo` VALUES ('5', 'upload/firmuserPicture/1450515853513_2015-12-19-05-04-13.jpg');
INSERT INTO `photo` VALUES ('6', 'upload/firmuserPicture/1450515871627_2015-12-19-05-04-31.jpg');
INSERT INTO `photo` VALUES ('7', 'upload/firmuserPicture/1450515871640_2015-12-19-05-04-31.jpg');
INSERT INTO `photo` VALUES ('8', 'upload/firmuserPicture/1450515968183_2015-12-19-05-06-08.jpg');
INSERT INTO `photo` VALUES ('9', 'upload/firmuserPicture/1450515968216_2015-12-19-05-06-08.jpg');
INSERT INTO `photo` VALUES ('10', 'upload/firmuserPicture/1450515968321_2015-12-19-05-06-08.jpg');
INSERT INTO `photo` VALUES ('11', 'upload/firmuserPicture/1450515968338_2015-12-19-05-06-08.jpg');
INSERT INTO `photo` VALUES ('12', 'upload/firmuserPicture/1450515968349_2015-12-19-05-06-08.jpg');
INSERT INTO `photo` VALUES ('13', 'upload/firmuserPicture/1450516116432_2015-12-19-05-08-36.jpg');
INSERT INTO `photo` VALUES ('14', 'upload/firmuserPicture/1450516116467_2015-12-19-05-08-36.jpg');
INSERT INTO `photo` VALUES ('15', 'upload/firmuserPicture/1450516576714_2015-12-19-05-16-16.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `loginid` varchar(255) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `aboutMe` varchar(255) DEFAULT NULL,
  `netName` varchar(255) DEFAULT NULL,
  `constellation` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `book` varchar(255) DEFAULT NULL,
  `music` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', '阿屎', '123', '吃', '苦逼的程序员         ', '我就是我，不一样的烟火，好好码代码，天天都潇洒。         ', '屎坨坨', '天蝎座', '成都', '边城', 'if', 'upload/firmuserPicture/null_2015-12-19-05-12-20.jpg');
