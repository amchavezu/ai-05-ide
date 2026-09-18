# Paper map

## 1. Source and scope

**PAPER.** Ide, Enrique, and Eduard Talamàs. 2025. "Artificial Intelligence in the Knowledge Economy." *Journal of Political Economy* 133(12): 3762-3800. The working source for this repository is arXiv:2312.05481v12, revised May 17, 2025.

The assignment prioritizes Propositions 5 and 6, the distribution of wage gains at the bottom and top, and the output comparison between autonomous and nonautonomous AI. The continuum equilibrium remains the source result. The hand derivation and Lean component use a transparent two-type analogue.

## 2. The paper's question, qualitatively

Knowledge work differs from ordinary task models because useful know-how is tacit. A solver cannot write a complete manual and walk away. Workers must bring exceptional problems to someone who knows more, and every consultation consumes that expert's scarce time.

AI changes this environment in two ways:

1. It encodes a fixed knowledge level (z_{AI}) and applies it at scale through compute.
2. Depending on autonomy, an AI agent may either both produce and advise or only advise.

The paper asks how those two dimensions change occupational choice, matching, wages, and total output.

## 3. The pre-AI hierarchy

### 3.1 Primitive uncertainty

Each human has knowledge (z\in[0,1]). Problem difficulty (x\sim U[0,1]), so

\[
\Pr(x\le z)=z.
\]

**INTERPRETATION.** A person's knowledge equals the fraction of problems she can solve alone.

### 3.2 Independent production

An independent producer handles one opportunity and produces one unit if (x\le z). Expected output is (z), so a competitive single-layer human firm has

\[
\Pi_1=z-w(z).
\]

Zero profit gives (w(z)=z) only for types who actually work as independent producers.

### 3.3 Two-layer production

A worker of type (z) asks for help with probability (1-z). Every question consumes (h\in(0,1)) units of solver time. A solver's unit time is exhausted when

\[
h\,n(z)(1-z)=1,
\]

so the team size is

\[
n(z)=\frac{1}{h(1-z)}.
\]

If a solver has knowledge (s\ge z), every worker produces with probability (s). The team's expected output is (n(z)s), and profit is

\[
\Pi_2^{nA}(s,z)=n(z)[s-w(z)]-w(s).
\]

**INTERPRETATION.** Higher worker knowledge reduces questions and expands the solver's span of control. Higher solver knowledge raises success on every worker's residual problems. This complementarity generates positive assortative matching.

## 4. Pre-AI equilibrium

**PAPER, Proposition 1.** The equilibrium is unique and efficient. Humans sort as

\[
W\preceq I\preceq S,
\]

and human worker-solver matching is strictly increasing. Workers and solvers are always present. Independent producers appear if and only if (h>h_0). The paper maintains (h<h_0) for its main AI comparisons, so the pre-AI equilibrium has no independent human producers.

Worker wages follow team zero profit:

\[
w(z)=m(z)-\frac{w(m(z))}{n(z)}.
\]

Solver wages satisfy

\[
w'(s)=n(e(s)),
\]

where (m) maps a worker to her solver and (e=m^{-1}).

## 5. Autonomous AI

An AI agent has knowledge (z_{AI}\in[0,1)) and consumes one unit of compute. Autonomous AI can pursue production opportunities, work at the bottom of a hierarchy, or solve at the top.

The relevant profits are

\[
\Pi_1^{AI}=z_{AI}-r,
\]

\[
\Pi_2^{tA}(z)=n(z)[z_{AI}-w(z)]-r,
\]

\[
\Pi_2^{bA}(s)=n(z_{AI})[s-r]-w(s).
\]

With compute abundant relative to human time, some AI agents must produce independently. Therefore

\[
r^*=z_{AI}.
\]

Zero profits then imply

\[
w^A(z)=z_{AI}\left(1-\frac1{n(z)}\right)
=z_{AI}[1-h(1-z)]
\]

for human workers assisted by AI, and

\[
w^A(s)=n(z_{AI})(s-z_{AI})
\]

for human solvers supervising AI workers.

**PAPER, Proposition 2.** The equilibrium is unique and efficient. It preserves occupational stratification and positive assortative matching. AI is always used independently. If (z_{AI}\in W), it must also work as a worker; if (z_{AI}\in S), it must also work as a solver.

## 6. Capability: basic versus advanced AI

The paper defines the categories relative to the pre-AI allocation:

\[
z_{AI}\in\operatorname{int}W
\quad\Rightarrow\quad
\text{basic AI},
\]

\[
z_{AI}\in\operatorname{int}S
\quad\Rightarrow\quad
\text{advanced AI}.
\]

**PAPER, Proposition 3.** Basic AI expands the set of human solvers and contracts the set of human workers. Advanced AI does the opposite.

**PAPER, Proposition 4.** Basic AI worsens the matches of humans who remain workers. Advanced AI improves matches for the least knowledgeable continuing workers and expands the span of every continuing solver.

## 7. Proposition 5: who gains under autonomous AI?

Define

\[
B=\{z\in[0,z_{AI}]:w^A(z)>w(z)\},
\]

\[
T=\{z\in[z_{AI},1]:w^A(z)>w(z)\}.
\]

The paper proves that these sets, when nonempty, occupy the extremes of the knowledge distribution. Its central statement is

\[
B\ne\varnothing
\iff z_{AI}>\bar z_{AI},
\qquad \bar z_{AI}\in\operatorname{int}W,
\]

and

\[
T\ne\varnothing
\quad\text{for every }z_{AI}\in[0,1).
\]

The top result uses the maintained restriction (h<h_0). The source notes that it can fail when (h\ge h_0), and it also excludes superintelligent (z_{AI}=1).

### 7.1 Match and share effects at the bottom

For a bottom worker, the wage formula can be read as

\[
\text{worker wage}
=\text{solver knowledge}
-\frac{\text{solver wage}}{\text{team size}}.
\]

Basic AI can lower the quality of the human solver assigned to the bottom, a negative match effect. It can also lower that solver's wage toward independent-production output, allowing the worker to retain more team surplus, a positive share effect. Bottom workers gain only when the share effect dominates.

Advanced AI improves the bottom match and the share, so the least knowledgeable gain.

### 7.2 Numerical threshold in the paper's uniform example

For (G(z)=z) and (h=1/2), the pre-AI figure gives

\[
w(0)\approx0.35704365.
\]

In the direct AI-solver configuration,

\[
w^A(0)=z_{AI}(1-h)=\frac{z_{AI}}2.
\]

Therefore the discrete bottom condition is

\[
w^A(0)>w(0)
\iff z_{AI}>\frac{w(0)}{1-h}
\approx0.71408730.
\]

Thus (z_{AI}=0.425) produces (w^A(0)=0.2125<w(0)), while (z_{AI}=0.85) produces (w^A(0)=0.425>w(0)). This is a numerical illustration of the capability condition, not a derivation of the paper's general endogenous threshold.

## 8. Proposition 6: nonautonomous AI

Nonautonomous AI may advise but cannot pursue a production opportunity. It cannot operate as an independent producer or as a worker. With abundant compute, some compute is idle and

\[
r^N=0.
\]

The top-automated zero-profit condition becomes

\[
n(z)[z_{AI}-w^N(z)]-0=0,
\]

so every human actually assisted by AI earns

\[
w^N(z)=z_{AI}.
\]

**PAPER, activation condition.** If (z_{AI}\le w(0)), AI is unused. If (z_{AI}>w(0)), only the least knowledgeable humans use AI as a solver.

**PAPER, comparisons.** In any case:

1. Autonomous AI produces strictly more total output than nonautonomous AI.
2. Nonautonomous AI creates some losers, with a strict loss when AI is used.
3. In a neighborhood of the bottom, nonautonomous AI yields wages weakly above both the pre-AI and autonomous-AI wages, with strictness when AI is used.
4. In a neighborhood of the top, autonomous AI yields wages weakly above nonautonomous-AI wages, with strictness away from (z=1).

For an AI-assisted worker,

\[
w^N(z)-w^A(z)
=z_{AI}-z_{AI}[1-h(1-z)]
=z_{AI}h(1-z)>0.
\]

The distributional benefit of nonautonomy comes from eliminating AI's opportunity cost as a producer and removing competition with humans in routine production. The output loss comes from leaving compute idle and forbidding the productive worker role.

## 9. The assignment's trap

The sentence "distribution depends on autonomy, not capability" is incomplete.

- Proposition 5 holds autonomy fixed and makes bottom gains depend on the capability threshold (z_{AI}>\bar z_{AI}).
- Proposition 6 compares autonomy regimes and changes the distribution of surplus and total output.

Capability determines whether the AI can create a favorable match and whether firms use a nonautonomous AI. Autonomy determines the AI's feasible occupations and opportunity cost. Both dimensions matter.

## 10. Lean boundary

**LEAN.** The formalization proves five algebraic statements in a discrete model:

1. positivity of the span of control on the model's economic domain;
2. the capability-threshold equivalence for bottom gains;
3. the nonautonomous bottom-wage advantage;
4. the strict output gain when autonomous AI uses otherwise idle compute;
5. the match/share wage-change decomposition.

**NOT FORMALIZED.** The continuum equilibrium, existence and uniqueness, occupational sets, endogenous matching maps, the paper's general threshold construction, and the full neighborhood quantifiers in Propositions 5 and 6 remain outside the Lean scope.
