import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemma

structure ChromatinModificationState where
  histoneMark : String
  dnaMethylation : Prop
  chromatinAccessibility : Prop

structure EpigeneticRegulationPackage where
  modificationState : ChromatinModificationState
  geneExpressionChange : Prop
  regulatoryMechanism : Prop

structure EpigeneticRegulationEvidence (E : EpigeneticRegulationPackage) where
  modificationClosed : E.modificationState.chromatinAccessibility
  regulatoryMechanismClosed : E.regulatoryMechanism

def EpigeneticRegulationClosed (E : EpigeneticRegulationPackage) : Prop :=
  E.modificationState.chromatinAccessibility ∧ E.regulatoryMechanism

theorem epigenetic_regulation_closed_from_evidence
    (E : EpigeneticRegulationPackage) (Ev : EpigeneticRegulationEvidence E) :
    EpigeneticRegulationClosed E := by
  exact And.intro Ev.modificationClosed Ev.regulatoryMechanismClosed

end MolecularBiologyNoncodingRnasLemma
end HautevilleHouse