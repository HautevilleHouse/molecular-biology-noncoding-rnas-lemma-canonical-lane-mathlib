import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaPopulationDynamicsPackage where
  transcriptionRate : Prop
  degradationRate : Prop
  bindingAffinity : Prop
  competitiveInhibition : Prop
  feedbackLoops : Prop

structure RnaPopulationDynamicsEvidence (P : RnaPopulationDynamicsPackage) where
  transcriptionRateClosed : P.transcriptionRate
  degradationRateClosed : P.degradationRate
  bindingAffinityClosed : P.bindingAffinity
  competitiveInhibitionClosed : P.competitiveInhibition
  feedbackLoopsClosed : P.feedbackLoops

def RnaPopulationDynamicsClosed (P : RnaPopulationDynamicsPackage) : Prop :=
  P.transcriptionRate ∧ P.degradationRate ∧ P.bindingAffinity ∧ P.competitiveInhibition ∧ P.feedbackLoops

theorem rna_population_dynamics_closed_from_evidence
    (P : RnaPopulationDynamicsPackage) (E : RnaPopulationDynamicsEvidence P) :
    RnaPopulationDynamicsClosed P := by
  exact And.intro E.transcriptionRateClosed
    (And.intro E.degradationRateClosed
      (And.intro E.bindingAffinityClosed
        (And.intro E.competitiveInhibitionClosed E.feedbackLoopsClosed)))

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse