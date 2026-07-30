import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaBindingKineticsPackage where
  onRate : ℝ
  offRate : ℝ
  equilibriumConstant : ℝ
  bindingSiteAccessibility : Prop

structure RnaBindingKineticsEvidence (K : RnaBindingKineticsPackage) where
  onRatePositive : K.onRate > 0
  offRatePositive : K.offRate > 0
  equilibriumConsistent : K.equilibriumConstant = K.onRate / K.offRate
  bindingSiteAccessibilityClosed : K.bindingSiteAccessibility

def RnaBindingKineticsClosed (K : RnaBindingKineticsPackage) : Prop :=
  K.onRate > 0 ∧ K.offRate > 0 ∧ K.equilibriumConstant = K.onRate / K.offRate ∧ K.bindingSiteAccessibility

theorem rna_binding_kinetics_closed_from_evidence (K : RnaBindingKineticsPackage)
    (E : RnaBindingKineticsEvidence K) : RnaBindingKineticsClosed K := by
  exact And.intro E.onRatePositive (And.intro E.offRatePositive (And.intro E.equilibriumConsistent E.bindingSiteAccessibilityClosed))

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse