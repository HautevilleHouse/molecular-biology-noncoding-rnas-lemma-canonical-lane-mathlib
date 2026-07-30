import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaConservationProfile where
  rnaType : String
  conservationScore : Float
  selectiveConstraint : String

structure NoncodingRnaEvolutionPackage where
  conservationProfiles : List RnaConservationProfile
  evolutionaryConservation : Prop
  functionalConstraint : Prop

structure NoncodingRnaEvolutionEvidence (C : NoncodingRnaEvolutionPackage) where
  evolutionaryConservationClosed : C.evolutionaryConservation
  functionalConstraintClosed : C.functionalConstraint

def NoncodingRnaEvolutionClosed (C : NoncodingRnaEvolutionPackage) : Prop :=
  C.evolutionaryConservation ∧ C.functionalConstraint

theorem noncoding_rna_evolution_closed_from_evidence (C : NoncodingRnaEvolutionPackage) (E : NoncodingRnaEvolutionEvidence C) : NoncodingRnaEvolutionClosed C := by
  exact And.intro E.evolutionaryConservationClosed E.functionalConstraintClosed

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
