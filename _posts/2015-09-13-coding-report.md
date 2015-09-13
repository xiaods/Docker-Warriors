---
layout : post
title : 2015-9-13中国区战报
---

by 战地记者：[老肖](https://github.com/xiaods)

距离上次报告Docker战况已经相隔5个月。9月13日，难得的蓝天，也让我的心情大好。本人重试创业道路，知道这条路很是艰辛，但当初来北京的第一天起我就在储备这创业的技能，总结下来一句话，创业非难事，不要忘了初心。

今天我要报告的是Docker的overlay的现状。相信大家都已经了解到，3.18Kernel集成了overlay filesystem。aufs也被ubuntu kernel team宣布放弃维护。所以在ubuntu这片区域玩的小伙伴就只能换fs来玩Docker了。目前有两个方案可以选择：btrfs(发音： "butter F S", "better F S")，overlay fs。因为我在红帽小五年的背景，深信由红帽工程师贡献的[东西](http://developerblog.redhat.com/2014/09/30/overview-storage-scalability-docker/)。在多次遇到inode爆满问题后，我开始在总结，这到底是怎么回事，为什么没有人能给一个生产级别的通用的文件系统解决方案呢？

最有效的办法当然是去看一下docker issues里相关[area/storage/overlay的问题](https://github.com/docker/docker/labels/area%2Fstorage%2Foverlay)。细看分析后，发现，当前的overlay已经非常完美，Bug少的可怜，但任然没有特别合适的落地方案。最差的也是最直接的方案是升级Kernel到4.2,然后当前的inode问题就可以缓解了。注意的是overlay文件系统是一个虚拟文件系统，在底层一般会有磁盘默认的文件系统，目前流行的是ext4 or xfs，目前overlay只能在ext4下表现正常，但XFS下就悲剧了。但好似红帽内部版本已经修复这个XFS支持Docker的问题。

回过头，我看到的是，没有商业维护的docker环境确实很难在生产环境下运行，难怪CoreOS，RedHat要做自己的Docker OS。这个依赖有太多问题了，没有专人维护，就只能天天报Bug了，无耐啊。别和我说跨平台，那不是简单的事情。

docker/docker
---
xlgao-zju - [fix doc about vol](https://github.com/docker/docker/pull/16100)
这应该是浙大技术的小伙。不多说。文档增强。

[journald log driver被加入支持](https://github.com/docker/docker/pull/13707)，到1.9会被发布
HuKeping - [Refactor CLI docker save #16215](https://github.com/docker/docker/pull/16215)
代码重构


docker/libcontainer
---
hqhq- [Don't change memswap value in libcontainer](https://github.com/docker/libcontainer/commit/f7c16f1d3e51e8c3da7ef70cae04b1bfe0f48e77)

docker/libnetwork
---
暂无消息

docker/distribution
---
liubin - [add indentations](https://github.com/docker/distribution/commit/e14e40b68cb68a8d72d7999b9e36ab59bfba33fb)
刘斌，OneAPM，研究Docker很长时间了。应该专注项目了。这样修缩进有点浪费人才啊。

Registry 2.2已经在开发中，结合[开源的认证服务器](https://github.com/cesanta/docker_auth)，各家已经可以定制自己的Docker注册中心了。当然，如果有人能做出来P2P的Registry，那就好玩了。


docker/machine
---
自从boot2docker启用docker-machine后，mac用户的我已经离不开这个小工具，这就是标准啊。
暂无消息

docker/swarm
---
swarm和mesos使用文档更新了。
让在mesos下使用[Swarm更加方便](https://github.com/docker/swarm/pull/1184/files)

docker/compose
---
如果说之前的应用分发都是一个一个Docker分发，那么建立一套DSL语义来构架多Docker的应用部署就非常酷了。compose就是干这个事情的，并且目前都已经是标配了。
