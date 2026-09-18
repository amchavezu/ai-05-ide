# Oral-defense questions

## What is the paper's central economic friction?

Tacit knowledge is embodied in humans and can be applied only through scarce time. Workers must consult solvers after observing an exceptional problem, and every consultation consumes solver time. AI scales a fixed tacit-knowledge level through compute.

## Why is (n(z)=1/[h(1-z)])?

A worker asks for help with probability (1-z). Each question consumes (h) units of solver time. A team of (n(z)) identical workers uses expected solver time (h n(z)(1-z)). Setting this equal to the solver's unit time gives the formula.

## Why does positive assortative matching arise?

Worker and solver knowledge are complements. A better solver raises success for every worker. A better worker asks fewer questions, allowing the solver to supervise a larger team. Matching high with high exploits both margins.

## What is the difference between basic and advanced AI?

The distinction is relative to the pre-AI occupational sets. Basic AI has a knowledge level inside the worker set. Advanced AI has a knowledge level inside the solver set. Basic AI pushes marginal humans toward solving; advanced AI pushes marginal humans toward routine production.

## What exactly is wrong with the one-line autonomy summary?

It ignores Proposition 5. With autonomy fixed, bottom winners exist only when (z_{AI}) exceeds an endogenous capability threshold. Autonomy matters in Proposition 6, but it does not erase the capability margin.

## Under what condition are there winners at the bottom?

In the paper's autonomous continuum model, (B\ne\varnothing) if and only if (z_{AI}>\bar z_{AI}), where the threshold lies in the interior of the pre-AI worker set. In my discrete direct-assistance version, the condition is (a>w_0/(1-h)).

## Why are there always winners at the top?

Under (h<h_0) and (z_{AI}<1), the positive share effect dominates any negative match effect for some top types. Large teams amplify savings on worker costs. The source warns that the claim can fail for (h\ge h_0) or (z_{AI}=1).

## Why can the least knowledgeable lose from basic autonomous AI?

They compete with AI in routine production and may be matched with less knowledgeable human solvers after the best solvers shift toward AI-driven production. The positive share effect need not compensate for this negative match effect.

## Why does nonautonomous AI help the bottom more?

It cannot compete with humans for routine work, and its inability to produce makes its compute rental rate zero when compute is abundant. AI-assisted workers therefore retain a larger share of output.

## Why is autonomous output strictly higher?

Autonomous AI can use compute for independent production and routine work. Nonautonomous AI forbids those roles and leaves some compute idle. The paper proves the equilibrium output comparison; my discrete accounting shows the same channel through the positive term (ka).

## What did Lean prove?

Lean proved five results: positivity of the span of control on the model domain, the discrete capability-threshold equivalence, the strict nonautonomous wage advantage for an assisted worker, the strict output gain from deploying otherwise idle compute, and the match/share identity.

## What did Lean not prove?

It did not prove existence or uniqueness of the continuum equilibrium, the matching maps, occupational-set changes, the endogenous continuum threshold, or the full neighborhood comparisons in Propositions 5 and 6.

## Why is the Lean theorem not just decoration?

The theorem exposes every variable and domain restriction used to divide by (1-h). The proof needs positivity of that denominator. It therefore checks the exact inequality direction and makes clear which assumptions support the conclusion.

## Why use a discrete analogue?

The assignment explicitly prioritizes a two- or three-type derivation. A discrete analogue isolates the mechanism in a form that can be derived by hand and verified in Lean without pretending to reconstruct the paper's continuum proof.

## What is your final verdict on the paper?

The two-dimensional taxonomy is essential. Capability determines whether AI is useful enough to change matches and create bottom winners. Autonomy determines the AI's feasible roles, outside option, incidence of gains, and total output.
