CDC 同步器在mobile chip中一般使用两级比较常见

在Auto security，controller 中级别又不同，有用四级的

每级同步器之间不能插buffer，更不能有其他组合逻辑
每次有这样的电路需要将其识别出来，在最后综合完或者每次检查的时候加入检查列表

关于Multiple cycle，要配合计数器，要明确地告诉其他逻辑电路具体的cycle 数目

有时候multiple cycle path 也用来约束两个异步时钟，让其相位不要太离谱

Low Power 现在的很多做法都是在rtl 读入之后，优化之前，这样的后厨在于Boundary 固定，视ISOlation或者LVL 的类型可以插在AON或者shutdown里面。

带Enable 信号的LVL 就是ISOLation + Levelshift

带upf/cpf 的LEC check 会去check Power table 中的所有case，并验证其一致性

一般转换率都可以达到80% 左右，可以去控制multi bit 的力度，某些时候merge 了会损害timing

当然power 和area 得到了充分的优化

GBA 和 PPA