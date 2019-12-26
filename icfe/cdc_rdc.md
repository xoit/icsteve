# CDC and RDC

CDC: Clock Domain Crossing

Q1: Why CDC should be pay attention to?

Data transfers between 2 clock domain will produce metastable state.
Cause CMOS Damage

2 or more Flip-Flop Synchronizer.

Q1.1: Why 2 or more

If data changes too fast

MTBF

同步电路结构，每种的应用场景
如何做约束，同步器的级数

RTL Power 分析
Power Domain 的确定
Low Power Cell 的特性
功耗如何优化

## RDC

Reset tree is similar to Clock tree.

The primary purpose of a reset is to force the SoC into a known state for stable
operations. This would avoid the SoC to power on to a random state and get hanged.

In a design, we could have hundreds of clocks, but usually we have several reset.

- hardward reset
- software reset
- other types

Reset strategy

- use synchronous or asynchronous resets
- will every flipflop receive a reset

Domain crossing:
