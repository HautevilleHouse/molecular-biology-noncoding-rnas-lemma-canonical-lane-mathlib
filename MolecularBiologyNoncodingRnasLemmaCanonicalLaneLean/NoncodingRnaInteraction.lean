import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemma

structure NoncodingRnaBindingSite where
  rnaSequence : String
  bindingAffinity : Float
  structureAccessibility : Prop

structure RnaInteractionPackage where
  targetMolecule : Type
  bindingSite : NoncodingRnaBindingSite
  regulatoryEffect : Prop
  interactionEvidence : Prop

structure RnaInteractionEvidence (R : RnaInteractionPackage) where
  bindingSiteClosed : R.bindingSite.structureAccessibility
  interactionEvidenceClosed : R.interactionEvidence

def RnaInteractionClosed (R : RnaInteractionPackage) : Prop :=
  R.bindingSite.structureAccessibility ∧ R.interactionEvidence

theorem rna_interaction_closed_from_evidence
    (R : RnaInteractionPackage) (E : RnaInteractionEvidence R) :
    RnaInteractionClosed R := by
  exact And.intro E.bindingSiteClosed E.interactionEvidenceClosed

end MolecularBiologyNoncodingRnasLemma
end HautevilleHouse