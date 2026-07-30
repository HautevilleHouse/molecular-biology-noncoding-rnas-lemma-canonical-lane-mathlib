import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

structure NoncodingRnaAdmittedObject where
  organism : Type
  transcriptome : Type
  noncodingRnaSet : Type
  regulationModel : Prop
  conclusion : NoncodingRnaWitnessClosed (⟨organism, transcriptome, noncodingRnaSet, regulationModel⟩ : NoncodingRnaAdmittedObject)

structure NoncodingRnaWitnessClosed (O : NoncodingRnaAdmittedObject) : Prop where
  rnaIdentified : Prop
  functionAssigned : Prop

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse