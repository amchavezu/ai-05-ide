# Artificial Intelligence in the Knowledge Economy

This repository studies Enrique Ide and Eduard Talamàs, *Artificial Intelligence in the Knowledge Economy*, *Journal of Political Economy* 133(12), 3762-3800. The primary reading copy is the [accepted manuscript, arXiv:2312.05481v12](https://arxiv.org/abs/2312.05481v12), cross-checked against the [published article](https://doi.org/10.1086/737233).

Student repository: [amchavezu/ai-05-ide](https://github.com/amchavezu/ai-05-ide)

Author: **Alvaro Marcelo Chávez Unyen**

## Question

How does AI reorganize knowledge work when it can scale tacit knowledge, and how do its **capability** and **autonomy** separately affect wages and total output?

## The economic mechanism

A human with knowledge (z\in[0,1]) solves a problem of uniformly distributed difficulty with probability (z). A worker can refer an unsolved problem to a more knowledgeable solver. Each referral costs (h\in(0,1)) units of solver time, so a solver matched with workers of type (z) can supervise

\[
n(z)=\frac{1}{h(1-z)}
\]

workers. Knowledge and time therefore create a hierarchy: less knowledgeable humans do routine production, while more knowledgeable humans specialize in exceptions and leverage their knowledge over several workers.

AI converts compute into agents with knowledge (z_{AI}). **Capability** is (z_{AI}). **Autonomy** determines whether those agents may both pursue production opportunities and advise others, or may only advise humans. This distinction creates two separate margins that the usual one-line summary collapses.

## Firms and zero-profit prices

For a human worker (z), a human solver (s\ge z), wage schedule (w), and compute rental rate (r), the relevant two-layer profits are

\[
\Pi_2^{tA}(z)=n(z)[z_{AI}-w(z)]-r,
\]

\[
\Pi_2^{bA}(s)=n(z_{AI})[s-r]-w(s),
\]

\[
\Pi_2^{nA}(s,z)=n(z)[s-w(z)]-w(s).
\]

The first firm uses AI as a solver, the second uses AI as workers, and the third is entirely human. With abundant compute and autonomous AI, some AI agents produce independently, so zero profits imply (r^*=z_{AI}). Hence

\[
w^A(z)=z_{AI}\left(1-\frac{1}{n(z)}\right)
=z_{AI}[1-h(1-z)]
\]

for a human worker assisted by AI. With nonautonomous AI, idle compute implies (r^N=0), and an AI-assisted worker earns

\[
w^N(z)=z_{AI}.
\]

Thus nonautonomy raises the assisted worker's share by

\[
w^N(z)-w^A(z)=z_{AI}h(1-z)>0
\]

whenever (z_{AI}>0), (h>0), and (z<1). The same restriction prevents AI from doing routine work independently, which lowers total output.

## Main result, with all relevant conditions

**Proposition 5, autonomous AI.** Let (B) and (T) be the pre-AI humans below and above (z_{AI}) whose wages rise after AI. There are winners at the bottom if and only if AI capability exceeds an endogenous threshold:

\[
B\neq\varnothing
\iff z_{AI}>\bar z_{AI},
\qquad \bar z_{AI}\in\operatorname{int}W.
\]

There are always winners at the top for (z_{AI}\in[0,1)), under the paper's maintained restriction (h<h_0). The bottom condition is about **capability**, even though the technology in Proposition 5 is autonomous. For basic autonomous AI, a negative match effect can dominate the positive share effect. Advanced AI improves both effects for the least knowledgeable.

**Proposition 6, nonautonomous AI.** If (z_{AI}\le w(0)), firms do not use the AI and the pre-AI allocation remains. If (z_{AI}>w(0)), only the least knowledgeable humans use AI as a solver. Relative to autonomous AI, nonautonomous AI gives the least knowledgeable weakly higher wages near the bottom, gives the most knowledgeable weakly lower wages near the top, and produces strictly less aggregate output. Strict wage comparisons require the proposition's stated activation and type conditions.

The result is therefore two-dimensional:

| Dimension | Economic question | Main role |
| --- | --- | --- |
| Capability (z_{AI}) | Which problems can AI solve? | Determines whether autonomous AI creates winners at the bottom and whether nonautonomous AI is used. |
| Autonomy | Can AI pursue production opportunities? | Changes who captures the surplus and whether available compute produces output. |

## What I checked

I derived a two-type version of the worker-AI firm and a numerical threshold using the paper's uniform example with (h=1/2). The pre-AI figure gives (w(0)\approx0.3570). Direct AI assistance gives (w^A(0)=z_{AI}/2), so the discrete threshold is approximately (0.7141): capability (0.425) leaves the bottom worse off, while capability (0.85) makes the bottom better off. This reproduces the direction of the two panels without claiming to solve the continuum equilibrium.

Lean checks five statements: positivity of the span of control on the model domain, the threshold equivalence, the nonautonomous bottom-wage advantage, the output gain from deploying otherwise idle compute, and the match/share decomposition. These are discrete algebraic consequences under explicit assumptions. Lean does **not** verify equilibrium existence, the continuum matching functions, or the claim that the paper's endogenous threshold equals the discrete threshold used here.

## Repository map

| Path | Purpose |
| --- | --- |
| `analysis/paper_map.md` | Qualitative mechanism and equation-by-equation map |
| `analysis/discrete_audit.md` | Two-type derivation and numerical check |
| `analysis/discrete_check.py` | Reproducible numerical calculations |
| `hand/DERIVATION_GUIDE.md` | Exact two-page derivation to reproduce by hand |
| `lean/` | Paper-scoped Lean formalization and validation evidence |
| `presentation.tex` / `presentation.pdf` | Twenty-minute Beamer deck |
| `speaker_notes.md` | Timed oral script and technical backup |
| `oral_defense.md` | Likely questions with concise answers |
| `prompts.md` | Relevant raw requests and responses from the working session |
