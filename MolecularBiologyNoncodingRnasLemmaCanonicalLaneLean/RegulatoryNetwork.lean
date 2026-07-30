import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RegulatoryEdge where
  regulator : String
  target : String
  regulationType : String
  effectSign : String

structure RegulatoryNetworkPackage where
  networkEdges : List RegulatoryEdge
  networkConnectivity : Prop
  pathwayMapping : Prop

structure RegulatoryNetworkEvidence (C : RegulatoryNetworkPackage) where
  networkConnectivityClosed : C.networkConnectivity
  pathwayMappingClosed : C.pathwayMapping

def RegulatoryNetworkClosed (C : RegulatoryNetworkPackage) : Prop :=
  C.networkConnectivity ∧ C.pathwayMapping

theorem regulatory_network_closed_from_evidence (C : RegulatoryNetworkPackage) (E : RegulatoryNetworkEvidence C) : RegulatoryNetworkClosed C := by
  exact And.intro E.networkConnectivityClosed E.pathwayMappingClosed

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
