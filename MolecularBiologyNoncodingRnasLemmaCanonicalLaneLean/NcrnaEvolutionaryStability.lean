import NcrnaBindingKinetics

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure EvolutionaryStabilityPackage {G : NoncodingRnaGamePackage}
    {N : RegulatoryNetworkPackage G} {K : BindingKineticsPackage N} where
  mutationRates : G.rnaSpecies -> ℝ
  selectionPressure : G.rnaSpecies -> ℝ
  evolutionaryStableState : Prop
  convergenceCondition : Prop

structure EvolutionaryStabilityEvidence {G : NoncodingRnaGamePackage}
    {N : RegulatoryNetworkPackage G} {K : BindingKineticsPackage N}
    (E : EvolutionaryStabilityPackage G N K) where
  evolutionaryStableStateClosed : E.evolutionaryStableState
  convergenceConditionClosed : E.convergenceCondition

def EvolutionaryStabilityClosed {G : NoncodingRnaGamePackage}
    {N : RegulatoryNetworkPackage G} {K : BindingKineticsPackage N}
    (E : EvolutionaryStabilityPackage G N K) : Prop :=
  E.evolutionaryStableState ∧ E.convergenceCondition

theorem evolutionary_stability_closed_from_evidence
    {G : NoncodingRnaGamePackage} {N : RegulatoryNetworkPackage G}
    {K : BindingKineticsPackage N} (E : EvolutionaryStabilityPackage G N K)
    (Ev : EvolutionaryStabilityEvidence E) : EvolutionaryStabilityClosed E := by
  exact And.intro Ev.evolutionaryStableStateClosed Ev.convergenceConditionClosed

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse