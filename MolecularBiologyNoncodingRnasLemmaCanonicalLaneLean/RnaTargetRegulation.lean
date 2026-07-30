import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaTargetRegulationPackage where
  targetTranscripts : List (String)
  regulationMode : String
  regulatoryEffect : Prop
  experimentalValidation : Prop

structure RnaTargetRegulationEvidence (R : RnaTargetRegulationPackage) where
  targetTranscriptsNonempty : R.targetTranscripts ≠ []
  regulatoryEffectConfirmed : R.regulatoryEffect
  experimentalValidationPositive : R.experimentalValidation

def RnaTargetRegulationClosed (R : RnaTargetRegulationPackage) : Prop :=
  R.targetTranscripts ≠ [] ∧ R.regulatoryEffect ∧ R.experimentalValidation

theorem rna_target_regulation_closed_from_evidence (R : RnaTargetRegulationPackage) (E : RnaTargetRegulationEvidence R) :
    RnaTargetRegulationClosed R := by
  exact And.intro E.targetTranscriptsNonempty (And.intro E.regulatoryEffectConfirmed E.experimentalValidationPositive)

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse