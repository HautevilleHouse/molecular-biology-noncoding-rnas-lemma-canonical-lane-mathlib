import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure ConservationAndBindingPackage where
  conservationMultipleAlignment : Prop
  bindingSiteConservation : List (String × Float)
  functionalMotifIdentified : Prop

structure ConservationAndBindingEvidence (C : ConservationAndBindingPackage) where
  conservationMultipleAlignmentClosed : C.conservationMultipleAlignment
  bindingSiteConservationClosed : C.bindingSiteConservation ≠ []
  functionalMotifIdentifiedClosed : C.functionalMotifIdentified

def ConservationAndBindingClosed (C : ConservationAndBindingPackage) : Prop :=
  C.conservationMultipleAlignment ∧ C.functionalMotifIdentified ∧ C.bindingSiteConservation ≠ []

theorem conservation_and_binding_closed_from_evidence (C : ConservationAndBindingPackage) (E : ConservationAndBindingEvidence C) :
    ConservationAndBindingClosed C := by
  exact And.intro E.conservationMultipleAlignmentClosed (And.intro E.functionalMotifIdentifiedClosed E.bindingSiteConservationClosed)

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse