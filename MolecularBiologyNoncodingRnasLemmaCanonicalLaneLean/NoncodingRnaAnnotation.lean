import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure NoncodingRnaAnnotationPackage where
  sequence : List (Char)
  secondaryStructure : Type u
  bindingSites : List (Nat × Nat)
  conservationScore : Float

structure NoncodingRnaAnnotationEvidence (P : NoncodingRnaAnnotationPackage) where
  secondaryStructureDetermined : Prop
  bindingSitesValidated : Prop
  conservationScorePositive : P.conservationScore > 0.0

def NoncodingRnaAnnotationClosed (P : NoncodingRnaAnnotationPackage) : Prop :=
  P.secondaryStructure ≠ Empty ∧ P.conservationScore > 0.0

theorem noncoding_rna_annotation_closed_from_evidence (P : NoncodingRnaAnnotationPackage) (E : NoncodingRnaAnnotationEvidence P) :
    NoncodingRnaAnnotationClosed P := by
  exact And.intro (by
    have h : P.secondaryStructure ≠ Empty := E.secondaryStructureDetermined
    exact h) E.conservationScorePositive

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse