# Speaker notes for the 20-minute presentation

## Slide 1, title (0:00-0:30)

This paper asks how AI changes a knowledge economy where production depends on tacit knowledge and scarce expert time. My focus is the distinction between AI capability and AI autonomy, the wage effects at the bottom and top, and the output trade-off.

## Slide 2, two dimensions (0:30-1:45)

Capability and autonomy answer different questions. Capability is the AI's knowledge level, `z_AI`. Autonomy determines whether AI may pursue production opportunities as a worker or independent producer, or may only advise humans. The common summary that distribution depends on autonomy rather than capability is incomplete. Proposition 5 already holds autonomy fixed and still makes bottom gains depend on capability.

## Slide 3, objects and the agent's problem (1:45-3:10)

Human knowledge `z` is the fraction of problems solved alone, while `x` is problem difficulty. Each request for help uses `h` units of solver time. AI capability is `z_AI`, and `mu` measures available compute. The equilibrium then determines team size `n(z)`, wages `w(z)`, the compute rental price `r`, occupations, and matching. Firms choose the structure and roles that maximize expected output minus wages and compute costs. Humans choose the highest-paying occupation, and compute owners rent to the highest bidder.

## Slide 4, pre-AI hierarchy (3:10-4:20)

A worker asks for help with probability `1-z`. Equating the time used by `n(z)` workers to the solver's unit time gives `n(z)=1/[h(1-z)]`. More knowledgeable workers ask fewer questions, so one solver can supervise more of them. This is the core equation behind knowledge hierarchies.

## Slide 5, firm problem (4:20-5:35)

An all-human team with worker knowledge `z` and solver knowledge `s` produces `n(z)s`. Zero profit gives the worker wage formula. That formula separates a match effect from a share effect. If AI changes the solver assigned to the bottom, worker productivity changes. If AI changes the solver's wage, the worker's share of team output changes. The effects can have opposite signs.

## Slide 6, autonomous AI prices (5:35-6:50)

An autonomous AI agent can produce independently. Because compute is abundant, some AI agents do exactly that. Zero profit in independent automated firms pins the compute rental rate to capability: `r^A=a`. Substituting this price into automated two-layer firms gives the two wage formulas. The worker formula produces the bottom threshold, while the solver formula shows why top humans can leverage AI workers.

## Slide 7, basic versus advanced (6:50-8:00)

These categories are relative to the pre-AI occupational sets. A basic AI has the knowledge of a pre-AI worker. It expands routine automated production and raises demand for human solvers. An advanced AI has the knowledge of a pre-AI solver. It makes solving cheap and raises demand for workers. This reorganization determines the match effects behind wages.

## Slide 8, Proposition 5 (8:00-9:30)

The paper defines bottom and top winner sets relative to AI knowledge. Bottom winners exist if and only if capability exceeds an endogenous threshold inside the pre-AI worker set. Top winners always exist under the maintained restrictions `h<h_0` and `z_AI<1`. The source notes that the top result can fail when communication costs are high or AI is superintelligent. The bottom condition is about capability, even though the technology is already autonomous.

## Slide 9, discrete threshold (9:30-10:45)

For a bottom worker directly assisted by AI, the autonomous zero-profit equation gives `w^A(0)=a(1-h)`. In the paper's uniform example, `h=1/2` and the plotted pre-AI bottom wage is about `0.357`. Dividing by `1-h` gives a discrete capability threshold near `0.714`. Thus `a=0.425` leaves the bottom worse off, while `a=0.85` makes the bottom better off. This calculation illustrates the mechanism but does not derive the paper's endogenous continuum threshold.

## Slide 10, Proposition 6 (10:45-12:20)

Nonautonomous AI can advise but cannot produce. With abundant compute, some compute remains idle, so its rental price is zero. Capability still matters because firms do not use AI when `a<=w(0)`. When `a>w(0)`, the least knowledgeable humans use AI as a solver. Nonautonomy improves incidence at the bottom but reduces output and lowers gains at the top relative to autonomy.

## Slide 11, wage and output gaps (12:20-13:35)

With rental price zero, an AI-assisted worker earns `a`. Under autonomy, the same formula subtracts AI's productive outside option, giving `a[1-h(1-z)]`. The difference is `ah(1-z)>0`. At the same time, autonomous AI can use remaining compute for independent production. If `k` units would otherwise be idle, the output gap is `ka>0`. These equations expose the distribution-output trade-off.

## Slide 12, my work (13:35-14:40)

I reconstructed the hierarchy and wage equations, separated match and share effects, reproduced the two numerical cases, and formalized the discrete algebra in Lean. I do not claim that these steps solve the continuum equilibrium. The paper's existence, matching, and neighborhood arguments remain source results.

## Slide 13, Lean scope (14:40-15:40)

The formalization covers five explicit statements, including positivity of the span of control. It does not hide the continuum equilibrium inside assumptions. Lean checks the algebra used in the hand derivation and presentation, while the validation report states what remains outside the formal boundary.

## Slide 14, required Lean slide (15:40-18:20)

The source equation is `w^A(z)=a[1-h(1-z)]`. Setting `z=0` yields the discrete bottom capability claim. The Lean statement quantifies capability, helping cost, and the pre-AI wage, with `0<h<1`. The proof establishes that `1-h` is positive and then applies Lean's positive-denominator division lemma in both directions. Lean verifies this discrete equivalence exactly. It does not prove that the resulting threshold equals the paper's endogenous continuum threshold.

## Slide 15, hand check and verdict (18:20-20:00)

The claim I did not trust was the one-dimensional summary. The handwritten calculation makes the conflict visible: bottom gains have a capability threshold even with autonomy fixed. Proposition 6 then shows what autonomy changes. My verdict is that capability governs whether the bottom gains, while autonomy changes the distribution of surplus and total output. The paper requires both dimensions.

## Timing note

The compiled PDF contains 15 slides. The timing above sums to 20 minutes and reserves the final 100 seconds for the hand check and verdict.
