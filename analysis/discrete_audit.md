# Discrete audit of Propositions 5 and 6

## 1. Two-type firm

Let a low type (z_L<1) work on routine problems and let a solver have knowledge (s\ge z_L). The worker asks for help with probability (1-z_L). Because each question uses (h) units of solver time,

\[
n_L=\frac{1}{h(1-z_L)}.
\]

With (n_L) workers, expected output is (n_Ls). If worker and solver wages are (w_L) and (w_S), zero profit requires

\[
n_L(s-w_L)-w_S=0,
\]

hence

\[
w_L=s-\frac{w_S}{n_L}.
\]

This equation contains the two forces behind Proposition 5. A change in solver knowledge changes the match. A change in the solver wage changes the worker's share.

## 2. Match/share decomposition

Let ((s_0,q_0)) denote the worker's solver knowledge and solver wage before AI, and ((s_1,q_1)) the corresponding objects after AI. Then

\[
w_L^1-w_L^0
=\left(s_1-\frac{q_1}{n_L}\right)
-\left(s_0-\frac{q_0}{n_L}\right)
\]

\[
=\underbrace{(s_1-s_0)}_{\text{match effect}}
+\underbrace{\frac{q_0-q_1}{n_L}}_{\text{share effect}}.
\]

For basic AI, (s_1-s_0<0) can offset the positive share term. For advanced AI, the least knowledgeable workers obtain a better match as well as a larger share.

## 3. Capability threshold for a bottom worker

Suppose the bottom type is (z_L=0) and receives direct help from autonomous AI with capability (a=z_{AI}). Abundant compute and autonomous production imply (r^A=a). The automated-top firm's zero-profit condition is

\[
n(0)[a-w^A(0)]-a=0.
\]

Since (n(0)=1/h),

\[
w^A(0)=a(1-h).
\]

If the pre-AI bottom wage is (w_0), then

\[
w^A(0)>w_0
\iff a(1-h)>w_0
\iff a>\frac{w_0}{1-h},
\]

where the final equivalence requires (0<h<1). Define the discrete threshold

\[
\bar a_D=\frac{w_0}{1-h}.
\]

This gives a capability condition inside the autonomous regime. Autonomy alone does not determine the sign.

## 4. Numerical check

Use the paper's uniform illustration with (h=1/2). The plotted pre-AI wage at the bottom is

\[
w_0\approx0.3570436518,
\]

so

\[
\bar a_D\approx0.7140873035.
\]

| AI capability (a) | (w^A(0)=a/2) | Comparison with (w_0) |
| ---: | ---: | --- |
| 0.425 | 0.2125 | Bottom loses |
| 0.850 | 0.4250 | Bottom gains |

These are the two capabilities used in the paper's comparison figure. The calculation isolates the threshold mechanism but does not replace the paper's continuum proof.

## 5. Nonautonomous AI and the bottom

When AI cannot produce independently, abundant unused compute makes its rental rate zero:

\[
r^N=0.
\]

For a human worker of knowledge (z) assisted by AI,

\[
n(z)[a-w^N(z)]-r^N=0
\quad\Rightarrow\quad
w^N(z)=a.
\]

Autonomous AI instead yields

\[
w^A(z)=a\left(1-\frac1{n(z)}\right)
=a[1-h(1-z)].
\]

Therefore

\[
w^N(z)-w^A(z)=ah(1-z).
\]

For (a>0), (h>0), and (z<1), the difference is strictly positive. This is the discrete price channel behind Proposition 6's bottom comparison.

The source activation condition still matters. If (a\le w(0)), the nonautonomous AI is not used, so the strict formula does not describe an equilibrium user. If (a>w(0)), the least knowledgeable types adopt it and the comparison becomes economically active.

## 6. Autonomy and output

Let (Q_H) denote output from human-involving firms that both regimes can operate. Let (k>0) units of compute remain after those matches.

Nonautonomous AI leaves those units idle:

\[
Q^N=Q_H.
\]

Autonomous AI uses them as independent producers, each with expected output (a>0):

\[
Q^A=Q_H+ka.
\]

Thus

\[
Q^A-Q^N=ka>0.
\]

This discrete resource-accounting proof captures the strict output comparison. It does not prove that every other allocation margin is identical, so the Lean theorem states the common-output premise explicitly.

## 7. Verdict

**PAPER.** Capability and autonomy jointly shape the distributional result.

**DERIVATION.** The bottom threshold is a capability threshold, while the wage gap between autonomy regimes comes from the compute rental rate and AI's outside option as a producer.

**LEAN.** The algebra above is machine checked under explicit positivity and domain assumptions.

**BOUNDARY.** The formalization is a discrete analogue. It neither asserts nor proves the paper's continuum equilibrium or its endogenous threshold.

