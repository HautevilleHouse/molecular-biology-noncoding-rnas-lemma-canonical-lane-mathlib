import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnarnaInteractionNetworkPackage where
  rnaSpecies : Type u
  interactionMatrix : Type v
  competitiveBinding : Prop
  regulatoryCascade : Prop

structure RnarnaInteractionNetworkEvidence (N : RnarnaInteractionNetworkPackage) where
  interactionMatrixDefined : Nonempty N.interactionMatrix
  competitiveBindingClosed : N.competitiveBinding
  regulatoryCascadeClosed : N.regulatoryCascade

def RnarnaInteractionNetworkClosed (N : RnarnaInteractionNetworkPackage) : Prop :=
  Nonempty N.interactionMatrix ∧ N.competitiveBinding ∧ N.regulatoryCascade

theorem rnarna_interaction_network_closed_from_evidence (N : RnarnaInteractionNetworkPackage)
    (E : RnarnaInteractionNetworkEvidence N) : RnarnaInteractionNetworkClosed N := by
  exact And.intro E.interactionMatrixDefined (And.intro E.competitiveBindingClosed E.regulatoryCascadeClosed)

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse