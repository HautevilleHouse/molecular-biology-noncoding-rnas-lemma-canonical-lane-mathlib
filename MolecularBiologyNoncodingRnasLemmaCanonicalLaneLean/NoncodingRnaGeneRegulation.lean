import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure NoncodingRnaRegulationPackage where
  targetGene : Type u
  regulatoryRna : Type v
  bindingAffinity : Prop
  expressionChange : Prop
  regulatoryPathway : Prop

structure NoncodingRnaRegulationEvidence (P : NoncodingRnaRegulationPackage) where
  bindingAffinityClosed : P.bindingAffinity
  expressionChangeClosed : P.expressionChange
  regulatoryPathwayClosed : P.regulatoryPathway

def NoncodingRnaRegulationClosed (P : NoncodingRnaRegulationPackage) : Prop :=
  P.bindingAffinity ∧ P.expressionChange ∧ P.regulatoryPathway

theorem noncoding_rna_regulation_closed_from_evidence (P : NoncodingRnaRegulationPackage)
    (E : NoncodingRnaRegulationEvidence P) : NoncodingRnaRegulationClosed P := by
  exact And.intro E.bindingAffinityClosed (And.intro E.expressionChangeClosed E.regulatoryPathwayClosed)

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse