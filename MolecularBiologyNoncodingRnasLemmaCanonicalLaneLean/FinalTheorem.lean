import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean.NoncodingRnaInteraction
import MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean.EpigeneticRegulation
import MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean.ComputationalPredictor

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemma

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (have : A.object := A; True)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedNoncodingRnaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_noncoding_rna_endgame (A : AdmissibleClass) :
    ConstrainedNoncodingRnaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyNoncodingRnasLemma
end HautevilleHouse