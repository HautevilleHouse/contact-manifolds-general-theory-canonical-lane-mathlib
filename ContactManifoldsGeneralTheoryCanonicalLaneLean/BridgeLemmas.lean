import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContactWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.contactStructureClosed

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse