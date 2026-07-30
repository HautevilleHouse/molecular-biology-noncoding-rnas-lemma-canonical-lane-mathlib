import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure RnaStructureMotif where
  motifName : String
  structureType : String
  sequenceConsensus : String
  functionalRole : String

structure RnaStructureFunctionPackage where
  motifs : List RnaStructureMotif
  structureConservation : Prop
  functionAnnotation : Prop

structure RnaStructureFunctionEvidence (C : RnaStructureFunctionPackage) where
  structureConservationClosed : C.structureConservation
  functionAnnotationClosed : C.functionAnnotation

def RnaStructureFunctionClosed (C : RnaStructureFunctionPackage) : Prop :=
  C.structureConservation ∧ C.functionAnnotation

theorem rna_structure_function_closed_from_evidence (C : RnaStructureFunctionPackage) (E : RnaStructureFunctionEvidence C) : RnaStructureFunctionClosed C := by
  exact And.intro E.structureConservationClosed E.functionAnnotationClosed

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
