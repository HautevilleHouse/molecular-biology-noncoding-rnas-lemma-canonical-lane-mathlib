import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure EvolutionaryConservationPackage where
  sequenceConservation : Prop
  structuralConservation : Prop
  functionalConservation : Prop
  selectivePressure : Prop
  phylogeneticInheritance : Prop

structure EvolutionaryConservationEvidence (E : EvolutionaryConservationPackage) where
  sequenceConservationClosed : E.sequenceConservation
  structuralConservationClosed : E.structuralConservation
  functionalConservationClosed : E.functionalConservation
  selectivePressureClosed : E.selectivePressure
  phylogeneticInheritanceClosed : E.phylogeneticInheritance

def EvolutionaryConservationClosed (E : EvolutionaryConservationPackage) : Prop :=
  E.sequenceConservation ∧ E.structuralConservation ∧ E.functionalConservation ∧ E.selectivePressure ∧ E.phylogeneticInheritance

theorem evolutionary_conservation_closed_from_evidence
    (E : EvolutionaryConservationPackage) (Ev : EvolutionaryConservationEvidence E) :
    EvolutionaryConservationClosed E := by
  exact And.intro Ev.sequenceConservationClosed
    (And.intro Ev.structuralConservationClosed
      (And.intro Ev.functionalConservationClosed
        (And.intro Ev.selectivePressureClosed Ev.phylogeneticInheritanceClosed)))

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse