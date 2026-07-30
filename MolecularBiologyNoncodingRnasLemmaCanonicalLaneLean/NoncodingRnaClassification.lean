import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaClass where
  rnaType : String
  lengthRange : Nat × Nat
  conservedDomains : List String
  structureFeatures : List String

structure NoncodingRnaClassificationPackage where
  rnaClasses : List RnaClass
  classificationComplete : Prop
  overlapResolved : Prop

structure NoncodingRnaClassificationEvidence (C : NoncodingRnaClassificationPackage) where
  classificationCompleteClosed : C.classificationComplete
  overlapResolvedClosed : C.overlapResolved

def NoncodingRnaClassificationClosed (C : NoncodingRnaClassificationPackage) : Prop :=
  C.classificationComplete ∧ C.overlapResolved

theorem noncoding_rna_classification_closed_from_evidence (C : NoncodingRnaClassificationPackage) (E : NoncodingRnaClassificationEvidence C) : NoncodingRnaClassificationClosed C := by
  exact And.intro E.classificationCompleteClosed E.overlapResolvedClosed

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
