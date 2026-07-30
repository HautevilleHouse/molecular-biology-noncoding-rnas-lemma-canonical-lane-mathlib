import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaTargetInteraction where
  rna : String
  target : String
  bindingType : String
  interactionEvidence : Prop

structure RnaTargetInteractionPackage where
  interactions : List RnaTargetInteraction
  interactionCompleteness : Prop
  functionalAnnotation : Prop

structure RnaTargetInteractionEvidence (C : RnaTargetInteractionPackage) where
  interactionCompletenessClosed : C.interactionCompleteness
  functionalAnnotationClosed : C.functionalAnnotation

def RnaTargetInteractionClosed (C : RnaTargetInteractionPackage) : Prop :=
  C.interactionCompleteness ∧ C.functionalAnnotation

theorem rna_target_interaction_closed_from_evidence (C : RnaTargetInteractionPackage) (E : RnaTargetInteractionEvidence C) : RnaTargetInteractionClosed C := by
  exact And.intro E.interactionCompletenessClosed E.functionalAnnotationClosed

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
