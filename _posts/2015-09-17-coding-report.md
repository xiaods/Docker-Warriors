---
layout : post
title : 2015-9-15中国区战报
---

by 战地记者：[老肖](https://github.com/xiaods)

昨天阿里百川的产品经理来数人大讲堂分享。把百川的创业心态袒露出来，让我们创业者表示恐惧。产品太好了，以至于我想抱大腿（失态，请见谅）
国内容器市场刚刚起步，希望大厂都能起到推动容器技术的作用，而不是把能做的都做了，我期待看到阿里百川的减法。我们容器创业也要更加努力。

加入Kubernetes项目关注。好了，让我们潜入战场看看情况吧

docker/docker
---
* HuKeping（Hu Keping hukeping@huawei.com）- Refactor the statistics of network in docker stats #15786
解决了一个API的bug，我们正好拿来用。赞

* 1.8.2正式发布了。[Changelog](https://github.com/docker/docker/commit/3b7cdfcd6b7a1c22a8318afaac16e5328b56ff1f)
看吧。


opencontainers/runc (aka. libcontainer)
---
laijs(Lai Jiangshan <jiangshanlai@gmail.com>) - update the command usage of `runc`
laijs(Lai Jiangshan <jiangshanlai@gmail.com>) - close config file after loaded

这位兄弟是Hyper创业团队成员。


docker/libnetwork
---
chenchun(Chun Chen ramichen@tencent.com)-Update libkv to latest commit #532
这位腾讯的盆友，我一会把他拉入开发群。
  

docker/distribution
---
无战况

docker/compose
---
无战况

hyperhq/hyper
---
laijs -  #72 from gnawux/fix_autogen_sh_function 
laijs -  #70 from carmark/probe_driver
gnawux - autogen.sh: should not use function bash keyword
carmark - probe the hypervisor's driver to get default driver

Hyper核心团队3个人已经显现出来。hyper的特性还需要加强，继续加强吧。


kubernetes/kubernetes
---
* caesarxuchao - Move REST Path /experimental to /apis/experimental/.. #13945

  > 这位是在2015年刚加入美国Google Cloud Computing Group，目前在Kubernetes上工作。
* feihujiang - Remove useless codes about minion #13958
  > 华为
* yujuhong - kubelet: make sure sync loop is run before performing housekeeping #13989
  > 未知是哪里的同仁，但通过nickname可以判断是华人
* zhengguoyong - fix the change of minions to nodes #13963
  > 华为
* liguangbo - Change iff to if and only if to improve annotation readability #13953
  > 华为
* andyzheng0831 - Add trusty node health monitoring #13936
  > 未知是哪里的同仁，但通过nickname可以判断是华人
* kevin-wangzefeng - fix a typo in Ubuntu getting started guide #13968
  > 华为
* huangyuqi - fix the dead link of logging.md #14026
  > 华为
* huangyuqi - fix the syntax error in docs #14018
  > 华为
* hurf - Fix nits in resourceQuota admission
  > 华为
* resouer - Allow multiple host ports map to the same container port #13384
  > 应该是浙大的张磊
* zhengguoyong - fix the optim of apiserver #13952
  > 华为
*  andyzheng0831 - Add trusty node health monitoring
  > 未知是哪里的同仁，但通过nickname可以判断是华人
* yujuhong  - kubelet: make sure sync loop is run before performing housekeeping
  > 未知是哪里的同仁，但通过nickname可以判断是华人
*  zhengguoyong -  fix the change of minions to nodes
  > 华为
  
看到以上的贡献情况，我想大家都明白了，华为团队开始攻占Kubernetes项目了。小团队可以让道了。
