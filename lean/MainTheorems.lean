import Mathlib

/-!
# Selected algebraic results for Ide and Talamas (2025)

This module formalizes a deliberately small, discrete audit of the model in
*Artificial Intelligence in the Knowledge Economy*. It does **not** claim to
formalize the paper's continuum equilibrium or Propositions 5 and 6 in full.

The objects below isolate the equations used in the course presentation:

* the span of control `1 / (h * (1 - z))`;
* the zero-profit worker-wage identity `s - q / n`;
* the autonomous-AI wage `a * (1 - h * (1 - z))`;
* the nonautonomous direct-assistance wage `a`; and
* output supplied by otherwise idle autonomous compute.
-/

namespace IT25KnowledgeEconomy

/-- Paper equation (span of control): a solver can supervise this many workers. -/
noncomputable def teamSize (h z : ℝ) : ℝ := 1 / (h * (1 - z))

/-- Zero-profit wage for a worker matched with a solver. -/
noncomputable def workerWage (solverKnowledge solverWage n : ℝ) : ℝ :=
  solverKnowledge - solverWage / n

/-- Discrete autonomous-AI wage obtained after substituting the AI rental `rᴬ = a`. -/
def autonomousAssistedWage (a h z : ℝ) : ℝ :=
  a * (1 - h * (1 - z))

/-- Discrete nonautonomous direct-assistance wage. -/
def nonautonomousAssistedWage (a : ℝ) : ℝ := a

/-- Capability cutoff at which the bottom type strictly beats its pre-AI wage. -/
noncomputable def capabilityThreshold (w0 h : ℝ) : ℝ := w0 / (1 - h)

/-- Output when nonautonomous compute cannot produce without a human. -/
def nonautonomousOutput (commonOutput : ℝ) : ℝ := commonOutput

/-- Output when `idleCompute` units can produce autonomously at capability `a`. -/
def autonomousOutput (commonOutput idleCompute a : ℝ) : ℝ :=
  commonOutput + idleCompute * a

theorem teamSizePositive_impl (h z : ℝ) (hh : 0 < h) (hz : z < 1) :
    0 < teamSize h z := by
  unfold teamSize
  exact one_div_pos.mpr (mul_pos hh (sub_pos.mpr hz))

theorem bottomCapabilityThreshold_impl
    (a h w0 : ℝ) (_hh : 0 < h) (hh1 : h < 1) :
    autonomousAssistedWage a h 0 > w0 ↔
      a > capabilityThreshold w0 h := by
  have hden : 0 < 1 - h := sub_pos.mpr hh1
  unfold autonomousAssistedWage capabilityThreshold
  simp only [sub_zero, mul_one]
  constructor
  · intro hgain
    exact (div_lt_iff₀ hden).2 hgain
  · intro hcap
    exact (div_lt_iff₀ hden).1 hcap

theorem nonautonomousBottomAdvantage_impl
    (a h z : ℝ) (ha : 0 < a) (hh : 0 < h) (hz : z < 1) :
    nonautonomousAssistedWage a > autonomousAssistedWage a h z := by
  have hzpos : 0 < 1 - z := sub_pos.mpr hz
  have hprod : 0 < a * (h * (1 - z)) := mul_pos ha (mul_pos hh hzpos)
  unfold nonautonomousAssistedWage autonomousAssistedWage
  nlinarith

theorem autonomyOutputGain_impl
    (commonOutput idleCompute a : ℝ)
    (hk : 0 < idleCompute) (ha : 0 < a) :
    nonautonomousOutput commonOutput <
      autonomousOutput commonOutput idleCompute a := by
  have hprod : 0 < idleCompute * a := mul_pos hk ha
  unfold nonautonomousOutput autonomousOutput
  linarith

theorem matchShareDecomposition_impl
    (s0 s1 q0 q1 n : ℝ) (_hn : 0 < n) :
    workerWage s1 q1 n - workerWage s0 q0 n =
      (s1 - s0) + (q0 - q1) / n := by
  unfold workerWage
  ring

end IT25KnowledgeEconomy
