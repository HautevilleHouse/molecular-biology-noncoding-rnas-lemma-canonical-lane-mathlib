import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaTargetRecognitionPackage where
  seedMatch : Prop
  compensatoryBinding : Prop
  accessibility : Prop
  thermodynamicStability : Prop
  cooperativity : Prop

structure RnaTargetRecognitionEvidence (T : RnaTargetRecognitionPackage) where
  seedMatchClosed : T.seedMatch
  compensatoryBindingClosed : T.compensatoryBinding
  accessibilityClosed : T.accessibility
  thermodynamicStabilityClosed : T.thermodynamicStability
  cooperativityClosed : T.cooperativity

def RnaTargetRecognitionClosed (T : RnaTargetRecognitionPackage) : Prop :=
  T.seedMatch ∧ T.compensatoryBinding ∧ T.accessibility ∧ T.thermodynamicStability ∧ T.cooperativity

theorem rna_target_recognition_closed_from_evidence
    (T : RnaTargetRecognitionPackage) (E : RnaTargetRecognitionEvidence T) :
    RnaTargetRecognitionClosed T := by
  exact And.intro E.seedMatchClosed
    (And.intro E.compensatoryBindingClosed
      (And.intro E.accessibilityClosed
        (And.intro E.thermodynamicStabilityClosed E.cooperativityClosed)))

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse