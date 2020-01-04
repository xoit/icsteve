# CAD Framework： 来自90 年代的黄金准则

为什么起这个标题呢？我这篇文章的参考书目是两本来自90 年代的书，而里面的概念放到无论哪个先进的Framework 里都是妥妥的黄金准则（除了Cloud 的概念）：

- 1992: [Electronic CAD Frameworks](https://www.goodreads.com/book/show/18200731-electronic-cad-frameworks)
- 1994: [CAD Frameworks: Principles and Architecture](https://www.goodreads.com/book/show/19109841-cad-frameworks)

在接下来的系列文章中，我会以这两本书为基础，结合实践中的问题，对CAD 做个系列教程，该教程的目标是让每一个工程人员都有能力去Handle CAD 相关的工作，全职兼职皆可。

## 什么是CAD Framework

CAD Framework 是软件层面的一种架构，提供一套通用的运行环境供EDA 和 Utilities 的使用。

从这个层面来讲，CAD Framework 更多的偏向于软件，用于信息的管理和组织并像胶水一样把各个单独的节点粘合起来。像EDA 公司本身的工具如，Lynx 以及 Flow tool 都是对这个领域的尝试，但是它们更Foucus 在自家工具的生态中。而像[ICManage](https://www.icmanage.com/) 或者[Cliosoft](https://www.cliosoft.com/) 这类公司，更多的把目光放眼在通用的Infrastructure 上，以及对Cloud 的支持。

## 数据管理

- IP 数据管理

IP 的管理越来越受重视，一个是因为知识产权的管理和合理使用非常重要。一个公司偶尔会有不同部门在同一时间去license 相同类型的IP 的情况，还有其他类似资源没有合理利用的场景。

IP 的管理处理对vendor 信息的管理以为就是对具体的数据管理，不同的IP vendor 提供的数据不尽相同，命名规则各异，质量参差不齐。这就需要IP 数据管理平台对数据进行整理和清洗，对于IP 数据来说我们不能改动任何原始数据，但是我们可以进行分类，重新建立link，生成中间model等等，反正就是记住一个基本准则：不能改变原始数据，又将数据统一化管理。

- Process 数据管理

Process 的更新也是很快的，对同一个tech node，会有0.x 版本到1.x 版本的一路更新。对process 的管理目的在于能将正确的文件用于正确的工具。Foundary 提供了一整套能用于各大EDA 厂商的工具，是一个整的Package。把这个package 内的内容细分并有序组织便是Process 数据管理的价值所在。

把数据管理起来对于comparison，tracing，debugging 都是很有帮助的。

- Design 数据管理

开始做项目了，数据的输入输出管理也是很重要的，保留这些数据并妥善管理对于项目的正确进行尤其重要。

有些公司用的是全部打包，archive all，有些公司则用按需打包，release control。

不管哪种方法，都是希望把设计数据版本化，方便数据的Handover，以及在数据发生意外的时候恢复数据。

## 工具管理

- EDA 工具 / Server 管理

EDA 工具的管理很多时候看似都是IT 的活，但是对于工具装好以后，License 的使用统计，EDA 的Runtime 统计都是关系到项目cost 的，需要和项目挂钩。而和项目挂钩的问题，最后都纳入到CAD Framework 里。

- Utilities

还有一些平时用于项目的，或者通用的脚本，如何管理和复用以增强今后的工作效率，这些都是需要靠CAD Framework 去保证的。

## 流程管理

流程管理虽然在整个CAD Framework 里比重不多，但是它是工程师每天打交道的部分，设计上要充分考虑用户体验和不断做正向反馈修正。

流程管理也是接下来会讲的重中之重，会剖析一些开源的框架，分析利弊，结合实际总结。每个框架都有自己的适用范围，并没有绝对的孰好孰坏，有些框架对于小公司太过冗余，有些对于大公司过于简单。

流程管理要兼顾流程的划分，Team 和Team 之间的合作衔接，以及Flow 开发人员和项目的合作，还有一个重要的是后续的Support 以及用户的反馈机制。

当然具体细节来说，比如流程开发人员怎么介入debug 项目，design 工程师怎么去workaround 既有流程满足自己的需求。

## 人力管理

有人说这个是公司HR 的事情，也不全是。如果你做为一个Manager 想要了解各个环节中所花费的人力资源有多少，通过这个数据来优化项目流程，缩短开发周期。所以周报，日报系统并不是简单地汇报一下做了什么。

## 自建还是购买

无论自建还是购买，都需要一定的CAD 人力资源的配置，全职的CAD 工程师或者某些设计人员的兼职CAD 角色。所以对Design Engineer 做CAD 相关的培训是很有必要的。

## Reference

- [Electronic CAD Frameworks](https://www.goodreads.com/book/show/18200731-electronic-cad-frameworks)
- [CAD Frameworks: Principles and Architecture](https://www.goodreads.com/book/show/19109841-cad-frameworks)
