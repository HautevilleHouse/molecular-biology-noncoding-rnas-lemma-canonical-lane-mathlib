import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RegulatoryNetworkModelsPackage where
  geneRegulation : Prop
  rnaInterference : Prop
  epigeneticModulation : Prop
  feedbackControl : Prop
  networkRobustness : Prop

structure RegulatoryNetworkModelsEvidence (R : RegulatoryNetworkModelsPackage) where
  geneRegulationClosed : R.geneRegulation
  rnaInterferenceClosed : R.rnaInterference
  epigeneticModulationClosed : R.epigeneticModulation
  feedbackControlClosed : R.feedbackControl
  networkRobustnessClosed : R.networkRobustness

def RegulatoryNetworkModelsClosed (R : RegulatoryNetworkModelsPackage) : Prop :=
  R.geneRegulation ∧ R.rnaInterference ∧ R.epigeneticModulation ∧ R.feedbackControl ∧ R.networkRobustness

theorem regulatory_network_models_closed_from_evidence
    (R : RegulatoryNetworkModelsPackage) (E : RegulatoryNetworkModelsEvidence R) :
    RegulatoryNetworkModelsClosed R := by
  exact And.intro E.geneRegulationClosed
    (And.intro E.rnaInterferenceClosed
      (And.intro E.epigeneticModulationClosed
        (And.intro E.feedbackControlClosed E.networkRobustnessClosed)))

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse