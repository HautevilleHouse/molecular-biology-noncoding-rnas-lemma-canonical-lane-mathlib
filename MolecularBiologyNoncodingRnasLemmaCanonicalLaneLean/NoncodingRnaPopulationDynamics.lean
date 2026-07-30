import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure NoncodingRnaGamePackage where
  rnaSpecies : Type u
  populationState : rnaSpecies -> ℝ
  fitnessFunction : (rnaSpecies -> ℝ) -> (rnaSpecies -> ℝ)
  evolutionDynamics : Prop
  equilibriumCondition : Prop
  populationConvergence : Prop

structure NoncodingRnaGameEvidence (G : NoncodingRnaGamePackage) where
  evolutionDynamicsClosed : G.evolutionDynamics
  equilibriumConditionClosed : G.equilibriumCondition
  populationConvergenceClosed : G.populationConvergence

def NoncodingRnaGameClosed (G : NoncodingRnaGamePackage) : Prop :=
  G.evolutionDynamics ∧ G.equilibriumCondition ∧ G.populationConvergence

theorem noncoding_rna_game_closed_from_evidence (G : NoncodingRnaGamePackage)
    (E : NoncodingRnaGameEvidence G) : NoncodingRnaGameClosed G := by
  exact And.intro E.evolutionDynamicsClosed
    (And.intro E.equilibriumConditionClosed E.populationConvergenceClosed)

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse