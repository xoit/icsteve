# CAD Framework: 框架为什么难落地

一个框架的部署牵涉到的东西太多，这里聊聊为什么部署一个大而全的框架那么困难，sFramework 准备怎么做。

![framework](framework_development.png)

你到了一个新的公司，很多时候你不得不学习新公司的一整套工作模式，这样的工作模式是一种相对看得见的代码来说更加无形的一种框架，而且很多公司的文档并不那么齐全，做过几个项目以后你或许对无形的框架有一定的了解了，使用起来也得心应手了，我们有没有一个更好的解决方案呢。 sFramework 的出发点在哪里？

## CAD Framework 可有可无

当Schedule 的大山压过来，什么都可以让路，不要说CAD Framework 了，尤其是CAD Framework 的support 有时候还不给力。

一个配置文件加一个脚本文件就是最简单的框架，运行时和配置分离的框架，不想用框架的人用这一个理由就够了。

所以当CAD Framework 的耦合性太大，就显得不够flexible，而当CAD Framework 太简单时，似乎没有了用的必要。

## CAD Framework 部署和维护成本太高

当你需要一个Team 专职做CAD 的时候，那么你的Team 应该是个很大的Team 了，因为单个小Team 的交流都可以用吼一声来解决。

部署了CAD Framework 不管是软件也好，一套work flow 也好，都需要有人去维护，没有了support 的CAD Framework 无法存活。

## sFramework 希望探索的路

如果要一个团队在一个小时的某CAD Framework介绍后就去使用这个CAD 框架，我相信这个是天方夜谭，就像之前说的两个理由，CAD 这个东西有或没有真的影响不大。

当一个资深工程师离职了，有没有把一些经验沉淀，传承？当你离职的时候，你是不是很多知识点都是基于原公司的work flow 上的，你自己的知识积累在哪里？

看客们，你同意以下说法吗？

- sFramework 基本核心功能均使用Tcl 编写，IC 行业的必备脚本语言，不会的请出列
- sFramework 并不依赖于某家工具，集成多家工具很方便
- sFramework 的各个模块可以单独使用，每个模块的功能可以使用插件来扩展，兼具了整体性和局部性
- sFramework 面向的对象是一线工程师，所以都可以用这么一套框架来管理自己的项目，脚本和生成项目报告等
- sFramework 可统一部署，并和一线工程师的个人部署无缝融合
  - sFramework 分离线版和在线版，离线版又分个人版和高级版，针对的对象不同，功能有所差异
- sFramework 第一版的子功能开发测试
  - sFlow，脚本管理，让你的脚本活起来
  - sReport，报告管理，整合现在流行的Web 图表功能，轻松生成项目报告
  - sWeb，可以本地启动的Web 服务器，含多个基于网页的子模块，如生成ppt 等
- sFramework 第二版子功能预告
  - sProject，管理项目，看板，todo，schedule 一个都不能少，还有更多
  - sResource，资源管理，所有的资源严格上都可以成为IP，不仅是design IP，流程还有文档等都是一种IP
