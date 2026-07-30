import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure FunctionalEnrichmentPackage where
  geneOntologyTerms : List (String)
  pathwayEnrichment : List (String)
  pValue : Float
  significant : pValue ≤ 0.05

structure FunctionalEnrichmentEvidence (F : FunctionalEnrichmentPackage) where
  geneOntologyTermsNonempty : F.geneOntologyTerms ≠ []
  pathwayEnrichmentNonempty : F.pathwayEnrichment ≠ []
  significantClosed : F.significant

def FunctionalEnrichmentClosed (F : FunctionalEnrichmentPackage) : Prop :=
  F.geneOntologyTerms ≠ [] ∧ F.pathwayEnrichment ≠ [] ∧ F.significant

theorem functional_enrichment_closed_from_evidence (F : FunctionalEnrichmentPackage) (E : FunctionalEnrichmentEvidence F) :
    FunctionalEnrichmentClosed F := by
  exact And.intro E.geneOntologyTermsNonempty (And.intro E.pathwayEnrichmentNonempty E.significantClosed)

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse