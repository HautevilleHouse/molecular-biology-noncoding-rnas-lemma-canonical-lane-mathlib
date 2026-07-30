import NoncodingRnaPopulationDynamics

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RegulatoryNetworkPackage (G : NoncodingRnaGamePackage) where
  micrornaRegulators : G.rnaSpecies -> Set G.rnaSpecies
  targetMolecules : Set G.rnaSpecies
  bindingAffinities : G.rnaSpecies -> G.rnaSpecies -> ℝ
  regulatoryLoops : Prop
  networkStability : Prop

structure RegulatoryNetworkEvidence {G : NoncodingRnaGamePackage}
    (N : RegulatoryNetworkPackage G) where
  regulatoryLoopsClosed : N.regulatoryLoops
  networkStabilityClosed : N.networkStability

def RegulatoryNetworkClosed {G : NoncodingRnaGamePackage}
    (N : RegulatoryNetworkPackage G) : Prop :=
  N.regulatoryLoops ∧ N.networkStability

theorem regulatory_network_closed_from_evidence
    {G : NoncodingRnaGamePackage} (N : RegulatoryNetworkPackage G)
    (E : RegulatoryNetworkEvidence N) : RegulatoryNetworkClosed N := by
  exact And.intro E.regulatoryLoopsClosed E.networkStabilityClosed

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse