import IT25KnowledgeEconomy.PaperInterface

/-!
# Proof endpoints

Each theorem below has exactly the corresponding transparent `...Spec` type.
All proof obligations close without `sorry` and call the implementation layer
compiled by the paper-scoped fast check.
-/

namespace IT25KnowledgeEconomy

theorem teamSizePositive_provesSpec : teamSizePositiveSpec := by
  intro h z hh hz
  exact teamSizePositive_impl h z hh hz

theorem bottomCapabilityThreshold_provesSpec :
    bottomCapabilityThresholdSpec := by
  intro a h w0 hh hh1
  exact bottomCapabilityThreshold_impl a h w0 hh hh1

theorem nonautonomousBottomAdvantage_provesSpec :
    nonautonomousBottomAdvantageSpec := by
  intro a h z ha hh hz
  exact nonautonomousBottomAdvantage_impl a h z ha hh hz

theorem autonomyOutputGain_provesSpec : autonomyOutputGainSpec := by
  intro commonOutput idleCompute a hk ha
  exact autonomyOutputGain_impl commonOutput idleCompute a hk ha

theorem matchShareDecomposition_provesSpec :
    matchShareDecompositionSpec := by
  intro s0 s1 q0 q1 n hn
  exact matchShareDecomposition_impl s0 s1 q0 q1 n hn

end IT25KnowledgeEconomy
