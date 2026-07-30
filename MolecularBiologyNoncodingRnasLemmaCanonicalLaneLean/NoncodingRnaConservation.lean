import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure NoncodingRnaConservationPackage where
  sequenceConservation : Prop
  structuralConservation : Prop
  functionalConservation : Prop
  selectivePressureEvidence : Prop

structure NoncodingRnaConservationEvidence (C : NoncodingRnaConservationPackage) where
  sequenceConservationClosed : C.sequenceConservation
  structuralConservationClosed : C.structuralConservation
  functionalConservationClosed : C.functionalConservation
  selectivePressureEvidenceClosed : C.selectivePressureEvidence

def NoncodingRnaConservationClosed (C : NoncodingRnaConservationPackage) : Prop :=
  C.sequenceConservation ∧ C.structuralConservation ∧ C.functionalConservation ∧ C.selectivePressureEvidence

theorem noncoding_rna_conservation_closed_from_evidence (C : NoncodingRnaConservationPackage)
    (E : NoncodingRnaConservationEvidence C) : NoncodingRnaConservationClosed C := by
  exact And.intro E.sequenceConservationClosed (And.intro E.structuralConservationClosed (And.intro E.functionalConservationClosed E.selectivePressureEvidenceClosed))

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse