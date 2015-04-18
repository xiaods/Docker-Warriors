---
layout : post
title : 2015-4-17中国区战报
---

by 战地记者：[老肖](https://github.com/xiaods)

昨晚参加了团建，看了一场速7。老外的赛车一家人让我陶醉了。太爽了。在Docker战区，
我们何尝不是这样，洋洋洒洒的写几行代码，加紧手的速度git
push上去，然后点一个PR，直接给社区提了一个Patch。被Merged的时间就是交流，比赛车持久战。

好吧，正题，1.6.0 (2015-04-07)发布了。大家吵着NB的Feature，多么多么好，那
让我来给大家讲讲不一样的理解。

https://github.com/docker/docker/blob/master/CHANGELOG.md

Builder
------
* Build containers with resource constraints, ie docker build --cpu-shares=100
--memory=1024m...
* commit --change to apply specified Dockerfile instructions while committing the
image
* import --change to apply specified Dockerfile instructions while importing the
image

> 点评：这里cpu-shares的参数，应该黄强贡献的。


Client
----

> 点评：支持windows。可以和boot2docker一样了。我7，8年不用windows了，就不班门弄斧了。
WHO CARE!

Runtime
---
* Container and image Labels
* --cgroup-parent for specifying a parent cgroup to place container cgroup within
* Logging drivers, json-file, syslog, or none
* Pulling images by ID
* --ulimit to set the ulimit on a container
* --default-ulimit option on the daemon which applies to all created containers
(and overwritten by --ulimit on run)

> 点评：ulimit挺管用的特性。其他都是增强。Rocket那去了，上厕所哭去了？WTF!


docker/docker

hqhq(Qiang Huang h.huangqiang@huawei.com) update docker-inspect man page #12436
HuKeping(Hu Keping hukeping@huawei.com)  Change log severity for non-tlsverify bind #12465
hqhq update docker-inspect man page

> 点评：只有华为的兄弟们在按时交活，按这个节奏，我下次战报就直接去华为总部安装个
打卡机了。向他们致敬。

docker/swarm
无中国开发者

> 点评：这个东西说大不大，说小不小。他是一个集群Cluster的framework，可以继承其他的
集群系统，还是很赞的。希望大家还是多关注。vieux(Victor Vieux<victorvieux@gmail.com>)这个人比较活跃。

docker/machine
无中国开发者

> 点评：今天就3个patch，太少了。这个项目本身就是给DevOps用的，实际使用中，我也没发现
不用它会有啥区别。。鸡肋中。。。


docker/libnetwork
无中国开发者

> 点评：这个项目我看是为Container SDN做准备。快来参与吧。

docker/distribution
liubin(bin liu <liubin0329@gmail.com>) fix some typos in source comments

> 点评：必须点评下，刘斌，这个patch竟然是他瞧不上修typo的苦力活。用自己造的语法检查工具
提交的Patch。我只能说，牛逼人不做苦力事。


docker/libcontainer
hqhq - fix freeze systemd test
hqhq - add test case for cpuShares check
hqhq - cleanup duplicate code for cpuShares check

> 点评：黄强，黄强。。。。。黄强，黄强。。。。群众的呐喊声在为你助威。今天这里你是Hero.


docker/compose
无中国开发者

> 点评：这也是一个高大上，叫好不叫卖的repo。我自己都不用我就不推荐了。






