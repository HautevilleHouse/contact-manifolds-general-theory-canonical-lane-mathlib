import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse