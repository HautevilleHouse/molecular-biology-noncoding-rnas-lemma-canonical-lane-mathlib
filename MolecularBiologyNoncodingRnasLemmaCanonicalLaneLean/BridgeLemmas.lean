import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NoncodingRnaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse