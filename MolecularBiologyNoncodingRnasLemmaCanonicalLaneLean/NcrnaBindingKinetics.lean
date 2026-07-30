import NcrnaRegulatoryNetwork

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure BindingKineticsPackage {G : NoncodingRnaGamePackage}
    (N : RegulatoryNetworkPackage G) where
  associationRates : G.rnaSpecies -> G.rnaSpecies -> ℝ
  dissociationRates : G.rnaSpecies -> G.rnaSpecies -> ℝ
  steadyStateBinding : Prop
  kineticsClosedForm : Prop

structure BindingKineticsEvidence {G : NoncodingRnaGamePackage}
    {N : RegulatoryNetworkPackage G} (K : BindingKineticsPackage N) where
  steadyStateBindingClosed : K.steadyStateBinding
  kineticsClosedFormClosed : K.kineticsClosedForm

def BindingKineticsClosed {G : NoncodingRnaGamePackage}
    {N : RegulatoryNetworkPackage G} (K : BindingKineticsPackage N) : Prop :=
  K.steadyStateBinding ∧ K.kineticsClosedForm

theorem binding_kinetics_closed_from_evidence
    {G : NoncodingRnaGamePackage} {N : RegulatoryNetworkPackage G}
    (K : BindingKineticsPackage N) (E : BindingKineticsEvidence K) :
    BindingKineticsClosed K := by
  exact And.intro E.steadyStateBindingClosed E.kineticsClosedFormClosed

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse