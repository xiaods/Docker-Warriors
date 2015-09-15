---
layout : post
title : 2015-9-15中国区战报
---

by 战地记者：[老肖](https://github.com/xiaods)

为了更加体验中国区的贡献，我特意加了一个开源项目hyper作为关注对象，希望大家喜欢。
libcontainer直接转移了战场，我会去runC那里打探消息。

docker/docker
---
* Mashimiao(Ma Shimiao <mashimiao.fnst@cn.fujitsu.com>) - [opts/opts.go: fix typo](https://github.com/docker/docker/commit/185544a4fede739bfd85633f18bf71a6f3deafd9)
* xiekeyang(xiekeyang xiekeyang@huawei.com) - [Fix: Docker Daemon didn't send actual actions client ask for to Token Server #15886](https://github.com/docker/docker/pull/15886)

 >这个PR导致了registry V2 auth workflow工作流的修订。赞。


opencontainers/runc (aka. libcontainer)
---
* hqhq(Qiang Huang h.huangqiang@huawei.com) - [Add testing docs in README #237](https://github.com/opencontainers/runc/pull/237)
  
  > 黄强跑到这里来了。

* hqhq(Qiang Huang h.huangqiang@huawei.com) - [Minor comments fix #251](https://github.com/opencontainers/runc/pull/251)

* hqhq(Qiang Huang h.huangqiang@huawei.com) - [Always remount for bind mount #236](https://github.com/opencontainers/runc/pull/236)

目前应该只看到黄强在这里活动。之前我就注意到黄强必要关注cgroup，libcontainer。应该就是这个缘故。

docker/libnetwork
---
* chenchun（Chun Chen ramichen@tencent.com）- [Fix CI failure due to mistaken imports #512](https://github.com/docker/libnetwork/pull/512)

  > 腾讯的小伙伴来出来玩了。好事情，加油。

* mountkin（Shijiang Wei mountkin@gmail.com）- [remove the useless get netns code in createNetworkNamespace #505](https://github.com/docker/libnetwork/pull/505)
  > 北京csphere的兄弟。创业同行，赞一把。
  

docker/distribution
---
没有战况。国内的同仁在这个registry上做了不少项目，但谈到社区贡献竟然是0。痛心啊。别瞎扯牛了，这里需要你的贡献！来吧，刀客战士！

docker/machine
---
VMware Fusion driver支持了。我挺喜欢这个项目。现在因为Docker Toolbox加上了docker-machine的支持，我开始在mac上天天用了。

docker/swarm
---
* jimmyxian(Xian Chaobo xianchaobo@huawei.com) - [Fix pull return code #1206](https://github.com/docker/swarm/pull/1206)
  
  > chaobo是swarm的maintainer了。这块地方可以天天见到他了。有事没事路过都可以和他打个招呼。

docker/compose
---
没有战况。


hyperhq/hyper
---
Hyper - 首先要知道它是干啥的。Hypervisor-agnostic Docker Runtime。中国团队做的国际项目，好处是提交代码的全部都是中国人。

因为他们不走sign off机制。我暂时对不上号。

gnawux - 王旭, the Founder
laijs - 
carmark - 

最最重要的是他们的代码还比较年轻，可以加的特性太多了。小伙伴走起来。看我的提交的Issue:

xiaods - [the introduction docker pull is very confuse for hyper starter #63](https://github.com/hyperhq/hyper/issues/63)

xiaods - [we need keep consistent user experience for hyper run and docker run #62](https://github.com/hyperhq/hyper/issues/62)

代码并不活跃，最新的到9月11号。今天都15号了，好不好。听说他们百万年薪，这活看来不难干啊。

hyperhq/runv
---
runv - 这个是干啥的，也要搞明白。Hypervisor-based Runtime for OCF。 
OCF都改名字了。现在叫 Open Container Initiative。 OCI，是Docker 在2015年的一年大事，成立了开发容器理事会，并且制定了开发的标准。这个runv是一个标准实现。

注意，重要的事情要说3遍。
这是官方认定的参考实现。
这是官方认定的参考实现。
这是官方认定的参考实现。

这个项目的Patch竟然有Signed-Off，到底有没有标准。。。。
活跃的开发者：
gao-feng - Gao feng omarapazanadi@gmail.com
laijs - Lai Jiangshan jiangshanlai@gmail.com
carmark - Lei Xue carmark.dlut@gmail.com

没几个人，你懂得。hyper是一家创业公司，能把开源事业做到国际范围，值得学习。









