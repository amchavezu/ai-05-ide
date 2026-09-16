# Speaker notes for the 20-minute presentation

## Slide 1, title (0:00-0:35)

This paper asks how AI changes a knowledge economy where production depends on tacit knowledge and scarce expert time. My focus is the distinction between AI capability and AI autonomy, the wage effects at the bottom and top, and the output trade-off.

## Slide 2, two dimensions (0:35-2:00)

The key warning is that capability and autonomy answer different questions. Capability is the AI's knowledge level, (z_{AI}). Autonomy determines whether AI may pursue production opportunities as a worker or independent producer, or may only advise humans. The common summary that the distributional effect is about autonomy rather than capability is incomplete. Proposition 5 is already inside the autonomous regime and still makes bottom gains depend on capability.

## Slide 3, pre-AI hierarchy (2:00-3:35)

An individual's knowledge (z) is the fraction of uniformly distributed problems she can solve. A worker asks for help with probability (1-z). Each question costs (h) units of the solver's time. Equating the expected time used by (n(z)) workers to the solver's unit time gives (n(z)=1/[h(1-z)]). This is the core hierarchy equation. More knowledgeable workers ask fewer questions, so one solver can supervise more of them.

## Slide 4, firm problem (3:35-5:00)

An all-human team with worker knowledge (z) and solver knowledge (s) produces (n(z)s). After paying worker and solver wages, zero profit gives the worker wage formula. That formula separates a match effect from a share effect. If AI changes the solver assigned to the bottom, worker productivity changes. If AI changes the solver's wage, the worker's share of team output changes. The two effects can oppose one another.

## Slide 5, autonomous AI prices (5:00-6:30)

An autonomous AI agent can produce independently. Because compute is abundant, some AI agents do exactly that. Zero profit in independent automated firms pins the compute rental rate to capability: (r^A=a). Substituting this price into automated two-layer firms gives the two wage formulas. The worker formula will produce the bottom threshold. The solver formula shows why top humans can leverage AI workers.

## Slide 6, basic versus advanced (6:30-7:55)

These categories are relative to the pre-AI occupational sets. A basic AI has the knowledge of a pre-AI worker. It expands routine automated production and raises demand for human solvers, so marginal workers move into problem solving. An advanced AI has the knowledge of a pre-AI solver. It makes solving cheap and raises demand for workers, so some former solvers return to routine production. This occupational reorganization determines the match effects behind wages.

## Slide 7, Proposition 5 (7:55-9:40)

The paper defines bottom and top winner sets relative to the AI's knowledge. Bottom winners exist if and only if capability exceeds an endogenous threshold located inside the pre-AI worker set. Top winners always exist under the maintained restrictions (h<h_0) and (z_{AI}<1). The source explicitly warns that the top result can fail when communication costs are high or AI is superintelligent. The condition I want to emphasize is the bottom condition: it is about capability, not autonomy.

## Slide 8, discrete threshold (9:40-11:15)

For a bottom worker directly assisted by AI, the autonomous zero-profit equation gives (w^A(0)=a(1-h)). In the paper's uniform example, (h=1/2) and the plotted pre-AI bottom wage is about 0.357. Dividing by (1-h) gives a capability threshold near 0.714. This explains the two parameter values in the figure: 0.425 leaves the bottom worse off, while 0.85 makes the bottom better off. This is an illustrative discrete threshold, not the continuum threshold proof.

## Slide 9, Proposition 6 (11:15-13:00)

Nonautonomous AI can advise but cannot produce. With abundant compute, some compute remains idle, so its rental price is zero. Capability still matters because the AI is unused when (a\le w(0)). When (a>w(0)), the least knowledgeable humans use AI as a solver. Nonautonomy improves incidence at the bottom but reduces output and lowers gains at the top relative to autonomy.

## Slide 10, wage and output gaps (13:00-14:30)

With rental price zero, an AI-assisted worker earns (a). Under autonomy, the same formula subtracts AI's productive outside option, giving (a[1-h(1-z)]). The difference is (ah(1-z)>0). At the same time, autonomous AI can use remaining compute for independent production. If (k) units would otherwise be idle, the output gap is (ka>0). These two equations expose the distribution-output trade-off.

## Slide 11, my work (14:30-15:50)

I reconstructed the hierarchy and wage equations, separated match and share effects, reproduced the two numerical cases, and formalized the discrete algebra in Lean. I deliberately did not claim that these steps solve the continuum equilibrium. The paper's existence, matching, and neighborhood arguments remain source results.

## Slide 12, Lean scope (15:50-17:00)

The formalization covers five explicit statements, including positivity of the span of control. It does not hide the continuum equilibrium inside assumptions. This scope is narrow by design: Lean checks the exact algebra used in my hand derivation and presentation, while the final validation report states what remains outside the formal boundary.

## Slide 13, required Lean slide (17:00-18:35)

The mathematical claim is the discrete capability threshold. The Lean statement quantifies capability, helping cost, and the pre-AI wage, and it includes the strict condition (0<h<1). The crucial proof step establishes that (1-h) is positive. Lean's division lemma then proves both directions without reversing the inequality. This verifies the discrete equivalence exactly. It does not prove that my threshold is identical to the paper's endogenous continuum threshold.

## Slide 14 — Hand check and verdict (18:35-20:00)

The claim I did not trust was the one-dimensional summary. The handwritten calculation makes the conflict visible: bottom gains have a capability threshold even with autonomy fixed. Proposition 6 then shows what autonomy changes. My verdict is that capability governs whether the bottom gains, while autonomy changes the distribution of surplus and total output. The paper requires both dimensions.

## Timing note

The compiled PDF contains 14 slides. The timing above sums to 20 minutes and deliberately reserves the final 85 seconds for the hand check and the verdict.
