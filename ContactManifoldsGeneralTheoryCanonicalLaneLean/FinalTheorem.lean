import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.ContactStructure
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.DarbouxTheorem
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.GrayStability

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

def contactStructureClosed (M : ContactManifoldPackage) : Prop :=
  ContactManifoldClosed M ∧ DarbouxTheoremClosed M D ∧ GrayStabilityClosed M G

theorem contact_structure_endgame (A : AdmissibleClass) : bridgeClosed A ∧ gateClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse