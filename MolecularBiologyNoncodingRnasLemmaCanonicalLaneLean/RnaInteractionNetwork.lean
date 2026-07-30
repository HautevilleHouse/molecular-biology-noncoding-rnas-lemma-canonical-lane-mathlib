import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaInteractionNetworkPackage where
  nodes : List (String)
  edges : List (String × String)
  interactionStrength : List (Float)
  networkConnected : Prop

structure RnaInteractionNetworkEvidence (N : RnaInteractionNetworkPackage) where
  nodesNonempty : N.nodes ≠ []
  edgesNonempty : N.edges ≠ []
  networkConnectedClosed : N.networkConnected

def RnaInteractionNetworkClosed (N : RnaInteractionNetworkPackage) : Prop :=
  N.nodes ≠ [] ∧ N.edges ≠ [] ∧ N.networkConnected

theorem rna_interaction_network_closed_from_evidence (N : RnaInteractionNetworkPackage) (E : RnaInteractionNetworkEvidence N) :
    RnaInteractionNetworkClosed N := by
  exact And.intro E.nodesNonempty (And.intro E.edgesNonempty E.networkConnectedClosed)

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse