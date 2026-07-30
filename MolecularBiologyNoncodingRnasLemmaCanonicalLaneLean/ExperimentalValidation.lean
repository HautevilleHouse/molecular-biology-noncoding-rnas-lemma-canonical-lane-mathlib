import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure ExperimentalValidationPackage where
  knockdownExperiments : Prop
  overexpressionAssays : Prop
  reporterGeneAssays : Prop
  crosslinkingExperiments : Prop
  clinicalCorrelation : Prop

structure ExperimentalValidationEvidence (Ex : ExperimentalValidationPackage) where
  knockdownExperimentsClosed : Ex.knockdownExperiments
  overexpressionAssaysClosed : Ex.overexpressionAssays
  reporterGeneAssaysClosed : Ex.reporterGeneAssays
  crosslinkingExperimentsClosed : Ex.crosslinkingExperiments
  clinicalCorrelationClosed : Ex.clinicalCorrelation

def ExperimentalValidationClosed (Ex : ExperimentalValidationPackage) : Prop :=
  Ex.knockdownExperiments ∧ Ex.overexpressionAssays ∧ Ex.reporterGeneAssays ∧ Ex.crosslinkingExperiments ∧ Ex.clinicalCorrelation

theorem experimental_validation_closed_from_evidence
    (Ex : ExperimentalValidationPackage) (Ev : ExperimentalValidationEvidence Ex) :
    ExperimentalValidationClosed Ex := by
  exact And.intro Ev.knockdownExperimentsClosed
    (And.intro Ev.overexpressionAssaysClosed
      (And.intro Ev.reporterGeneAssaysClosed
        (And.intro Ev.crosslinkingExperimentsClosed Ev.clinicalCorrelationClosed)))

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse