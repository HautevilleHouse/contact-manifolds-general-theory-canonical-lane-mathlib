import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

def ConstrainedContactClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_contact_endgame (A : AdmissibleClass) :
    ConstrainedContactClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse