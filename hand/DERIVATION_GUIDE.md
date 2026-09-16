# Two-page handwritten derivation guide

The assignment requires a real photograph of work done by hand. Reproduce the following derivation on paper, annotate the steps in your own words, and save the final photograph as `hand/ide-talamas-discrete.jpg`.

## Page 1: hierarchy and capability threshold

1. State the primitives: worker knowledge (z<1), solver knowledge (s\ge z), helping cost (h\in(0,1)), and uniform problem difficulty.
2. Derive the span of control:

\[
h n(z)(1-z)=1
\quad\Rightarrow\quad
n(z)=\frac{1}{h(1-z)}.
\]

3. Write the all-human zero-profit condition:

\[
n(z)[s-w(z)]-w(s)=0
\quad\Rightarrow\quad
w(z)=s-\frac{w(s)}{n(z)}.
\]

4. Subtract the pre- and post-AI worker wages and label the match and share effects:

\[
\Delta w_L=(s_1-s_0)+\frac{q_0-q_1}{n_L}.
\]

5. Set the bottom type to (z=0). With autonomous AI capability (a), use (r^A=a) and derive

\[
n(0)[a-w^A(0)]-a=0
\quad\Rightarrow\quad
w^A(0)=a(1-h).
\]

6. Derive and box the capability threshold:

\[
w^A(0)>w_0
\iff
a>\frac{w_0}{1-h}.
\]

7. Insert (h=1/2) and (w_0\approx0.3570). Check (a=0.425) and (a=0.85).

## Page 2: autonomy comparison and verdict

1. Nonautonomous AI cannot produce independently. With abundant idle compute, write (r^N=0).
2. Derive the assisted worker wage:

\[
n(z)[a-w^N(z)]-0=0
\quad\Rightarrow\quad
w^N(z)=a.
\]

3. Compare with the autonomous wage:

\[
w^N(z)-w^A(z)=ah(1-z)>0.
\]

List the strictness conditions (a>0), (h>0), and (z<1), plus the source's adoption condition (a>w(0)).

4. Let (k>0) compute units remain. Derive

\[
Q^A-Q^N=ka>0.
\]

5. End with this verdict in your own handwriting:

> Capability determines whether the bottom gains within the autonomous regime. Autonomy changes the distribution of surplus and whether compute can produce independently. The two dimensions cannot be collapsed into one.

## Photograph checklist

- Include both complete pages in one legible image or two ordered images.
- Keep the inequalities and their conditions visible.
- Circle the threshold (a>w_0/(1-h)).
- Underline the Lean boundary: discrete algebra, not the continuum equilibrium.

