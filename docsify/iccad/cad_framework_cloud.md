# CAD Framework: Cloud 带来的变化

CAD Framework 的目标是让使用者忘记框架，专心于具体的IC 设计工作。

- Framework 能做的尽量让Framework 去做；
- Framework 不能做的，想办法让Framework 去做。

在上一篇文章中，我们谈到了CAD Framework，我总结成八个字，“数据管理，接口管理”，当然涉及到细节就会有很多了，不同的应用，不同的数据类型，不同的接口设计。

## 云来了

Cloud 的兴起，让算力得到了一定的解放，让服务更容易部署，也正改变着供应商的定价模式，以及使用者的操作方式。

既然这么多方面都在悄然变化，那CAD Framework 不可能一成不变就可以适应新的事物。

我刚刚提到的数据管理和接口管理，“云来了”并咩有改变数据管理的方式，直接影响的是接口管理，管理好接口一切都好办了。

## 接口管理变革

互联网企业，或者互联网思维在“入侵”各行各业，也包括IC 行业，很多初创企业在从互联的角度对IC 使用到的数据进行管理，并结合经典的项目管理思想，形成了一套套的项目管理，数据管理方法论。

数据的底层还是要结合各行各业的实际情况，IC 行业有自身独有的数据特征，底层数据管理变革的周期很长，想比10年前，或者二十年前来看并没有实质性的改变。

CAD Framework 的演进是让数据管理变得更加科学，高效。

### 数据隔离

传统的IT 架构中，只要有权限就可以访问本地数据。

云端顾名思义，数据不在本地，当然我们可以登录到云端去，比如ssh，那么其实和本地操作无差，但单纯的把机器和环境搬到远程并不能发挥云的优势。

云的演变从按机器资源为最小颗粒到以功能，以函数的调用提供服务。

- 租用云服务器，作为本地服务器的扩展，通过组网完成数据互通
- 租用Runtime，比如我只需要做一个dc 的综合并且希望充分利用资源最多一晚上要出结果
- 租用函数，我只需要做综合里的compile_ultra，前期以及后续都在本地完成

### 数据传输

数据的传输逐渐成为关注的焦点，安全性与便利性一直是一对矛盾体。

纯文本，代码类型的传输起来没有一点压力，而版图数据等就不是那么方便了。

- 将数据分析，debug搬至云端，降低数据传输的频次
- 利用EDA shell来 debug
- 错峰传输，比如晚上

### 数据格式

虽然开一个socket通道，什么数据格式都可以传输。

除了IC 的专有格式之外，配置也好，元数据也好，选择json应该是相对比较友好的格式。

### 混合云/多云

每家云服务商的接口不尽相同，对于一个CAD框架来说，无论是面对本地环境也好，云环境也罢，都需要有一个坚实的底层架构。

基础架构的健壮性可以做到不变应万变。

## Reference

- [DAC 2019: Design on Cloud](https://www.youtube.com/watch?v=jJGDro5xmtQ&list=PLKqCo4MpJlW8hgxreoqmOBC59GwMWhYhe)
- [EDA is Better in the Cloud. Here’s Why the Cloud is the Future of EDA](https://blog.semi.org/technology-trends/eda-is-better-in-the-cloud.-heres-why-the-cloud-is-the-future-of-eda)
- [Optimizing Electronic Design Automation (EDA) Workflows on AWS](https://d1.awsstatic.com/HPC2019/optimizing-electronic-design-automation-eda-workflows-on-aws.pdf)
- 更多参考文献，加入[知识星球](https://wx.zsxq.com/dweb2/index/group/88518421841542)可获得所有离线资源

![ICSteve 知识星球](../iccourse/icsteve_zsxq.jpg ':size=300')
