# Speaker notes for the 20-minute presentation

## Slide 1, title (0:00-0:25)

This paper studies a knowledge economy in which scarce experts help other people solve difficult problems. I will explain how AI changes that hierarchy, why capability and autonomy have different economic effects, and which parts of the mechanism I checked by hand and in Lean.

## Slide 2, motivation (0:25-1:35)

Think of a law firm, hospital, or software team. Many workers handle routine cases, while a smaller group of experts answers the difficult questions. This organization scales expert knowledge, but expert time remains scarce. AI adds another source of knowledge. The economic effect depends on what the AI can solve and whether it may create output on its own. Those features affect both the quality of each worker's match and the division of team output.

## Slide 3, capability and autonomy (1:35-2:45)

Capability is the AI's knowledge level, `z_AI`. It answers which problems the AI can solve and where it fits in the hierarchy. Autonomy answers whether AI may pursue production opportunities or may only advise a human. The common summary that distribution depends on autonomy rather than capability is incomplete. Proposition 5 already holds autonomy fixed and still makes bottom gains depend on capability.

## Slide 4, objects and the agent's problem (2:45-3:55)

Human knowledge `z` is the fraction of problems solved alone, while `x` is problem difficulty. Each request for help uses `h` units of solver time. AI capability is `a`, and `mu` measures available compute. The equilibrium determines team size `n(z)`, wages `w(z)`, the compute rental price `r`, occupations, and matching. Firms choose the organization that maximizes output minus wages and compute costs. Humans choose the highest-paying occupation.

## Slide 5, knowledge hierarchy (3:55-4:55)

A worker asks for help with probability `1-z`. Equating the time used by `n(z)` workers to the solver's unit time gives `n(z)=1/[h(1-z)]`. More knowledgeable workers ask fewer questions. A single expert can therefore support more of them. This simple time constraint creates the hierarchy.

## Slide 6, match and share effects (4:55-5:55)

An all-human team with worker knowledge `z` and solver knowledge `s` produces `n(z)s`. Zero profit gives the worker wage formula. A wage change then has two parts. The match effect asks whether the worker receives a better solver. The share effect asks how much of team output remains after paying that solver. AI can improve one part and worsen the other.

## Slide 7, the autonomous outside option (5:55-6:55)

An autonomous AI can produce independently. With abundant compute, some AI agents do exactly that, so zero profit sets the compute rental rate equal to capability: `r^A=a`. This outside option matters for distribution. A firm that uses AI as a solver must compensate compute for the output the AI could have produced on its own.

## Slide 8, where AI enters (6:55-7:50)

A basic AI resembles a pre-AI worker. It expands routine production and raises demand for human solvers, but humans who remain workers may receive worse matches. An advanced AI resembles a pre-AI solver. It makes expertise cheaper and can improve the match received by the least knowledgeable workers. Capability therefore changes the organization of work before it changes wages.

## Slide 9, Proposition 5 (7:50-9:10)

The paper defines winners below and above AI knowledge. Bottom winners exist only when capability exceeds an endogenous threshold inside the pre-AI worker set. Top winners always exist under the maintained conditions `h<h_0` and `a<1`. The top benefits from leverage over AI workers. At the bottom, a weak AI can worsen the match enough to offset the positive share effect.

## Slide 10, discrete threshold (9:10-10:15)

For a bottom worker directly assisted by autonomous AI, zero profit gives `w^A(0)=a(1-h)`. With `h=1/2` and the paper's pre-AI bottom wage near `0.357`, the illustrative threshold is about `0.714`. Capability `0.425` remains below it, while `0.85` lies above it. This calculation reproduces the direction of the two cases without claiming to derive the continuum threshold.

## Slide 11, Proposition 6 (10:15-11:30)

Nonautonomous AI can advise but cannot produce by itself. Some abundant compute remains idle, so its rental price is zero. If capability is below the bottom wage, firms do not use the AI. Above that activation condition, bottom workers use it as a solver. Removing autonomy shifts surplus toward those workers, but lowers wages near the top and reduces total output.

## Slide 12, wage and output trade-off (11:30-12:30)

With a zero compute price, an AI-assisted worker earns `a`. Under autonomy, the same worker earns `a[1-h(1-z)]`. The wage difference is positive for an active bottom worker. At the same time, autonomous AI can use spare compute for independent production. Nonautonomy can therefore raise some bottom wages while making the economy produce less.

## Slide 13, intuitive reading (12:30-13:40)

The results become easier to remember as two sequential questions. First ask how capable the AI is. Capability determines whether firms use it and whether it is good enough to create bottom winners under autonomy. Then ask what the AI may do. Autonomy creates an outside option, changes who captures team output, and determines whether spare compute produces. The two questions cannot be collapsed into one.

## Slide 14, analytical and computational work (13:40-14:35)

I reconstructed the hierarchy and wage equations, separated match and share effects, reproduced the two numerical cases, and formalized the discrete algebra in Lean. I do not claim that these steps solve the continuum equilibrium. The paper remains the source for existence, matching, and neighborhood results.

## Slide 15, Lean scope (14:35-15:30)

Lean verifies five explicit algebraic statements. It checks the model domain, the capability threshold equivalence, the nonautonomous wage advantage, the output comparison, and the match-share decomposition. It does not verify the paper's continuum equilibrium or the full Propositions 5 and 6.

## Slide 16, required Lean slide (15:30-18:00)

The paper equation is `w^A(z)=a[1-h(1-z)]`. Setting `z=0` gives the discrete bottom threshold. The Lean statement quantifies capability, helping cost, and the pre-AI bottom wage. The proof first establishes that `1-h` is positive. Lean then applies the positive-denominator division lemma in both directions. This verifies the displayed equivalence exactly, but it does not identify the discrete threshold with the paper's endogenous continuum threshold.

## Slide 17, hand derivation I (18:00-18:35)

The first part of my handwritten check reconstructs the span of control, the all-human zero-profit wage, and the match and share effects. These are the steps that connect the organization of knowledge to the wage mechanism.

## Slide 18, hand derivation II (18:35-19:15)

The second part sets the bottom type to zero and derives `w^A(0)=a(1-h)`. Dividing by the positive term `1-h` gives the capability threshold. The two parameter values fall on opposite sides of that threshold.

## Slide 19, hand derivation III and verdict (19:15-20:00)

The final page compares autonomy regimes. A nonautonomous AI has no independent production option, so assisted workers capture more surplus, but spare compute produces nothing. My verdict is that capability determines whether the bottom gains within the autonomous regime. Autonomy changes the distribution of surplus and total output. Both dimensions matter.

## Timing note

The compiled PDF contains 19 slides. The timing above sums to 20 minutes. The final three slides show the student's own handwritten derivation and verdict on screen.
