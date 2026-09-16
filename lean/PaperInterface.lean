import IT25KnowledgeEconomy.MainTheorems
import IT25KnowledgeEconomy.Assumptions

/-!
# Human-facing interface: Artificial Intelligence in the Knowledge Economy

## Formalization boundary

These transparent propositions encode selected algebraic implications used to
audit the paper's mechanism. They are discrete analogues, not a full
formalization of the endogenous assignment equilibrium or of Propositions 5
and 6. In particular, Lean checks the displayed equations given their domain
conditions; it does not establish that this discrete environment is equivalent
to the paper's continuum economy.
-/

namespace IT25KnowledgeEconomy

/-- Positive span of control on the paper's economic domain. -/
def teamSizePositiveSpec : Prop :=
  ∀ h z : ℝ, 0 < h → z < 1 → 0 < teamSize h z

/--
Bottom workers gain under autonomous AI exactly when capability exceeds the
cutoff `w₀ / (1 - h)`. This is the key antidote to the one-dimensional gloss:
autonomy alone does not make the bottom type a winner.
-/
def bottomCapabilityThresholdSpec : Prop :=
  ∀ a h w0 : ℝ, 0 < h → h < 1 →
    (autonomousAssistedWage a h 0 > w0 ↔
      a > capabilityThreshold w0 h)

/--
In the discrete direct-assistance comparison, nonautonomous AI gives a worker
strictly more than autonomous AI when `a > 0`, `h > 0`, and `z < 1`.
-/
def nonautonomousBottomAdvantageSpec : Prop :=
  ∀ a h z : ℝ, 0 < a → 0 < h → z < 1 →
    nonautonomousAssistedWage a > autonomousAssistedWage a h z

/-- Idle compute raises output only when AI can act autonomously. -/
def autonomyOutputGainSpec : Prop :=
  ∀ commonOutput idleCompute a : ℝ,
    0 < idleCompute → 0 < a →
      nonautonomousOutput commonOutput <
        autonomousOutput commonOutput idleCompute a

/-- Wage changes decompose into solver-knowledge and solver-cost/share terms. -/
def matchShareDecompositionSpec : Prop :=
  ∀ s0 s1 q0 q1 n : ℝ, 0 < n →
    workerWage s1 q1 n - workerWage s0 q0 n =
      (s1 - s0) + (q0 - q1) / n

end IT25KnowledgeEconomy
