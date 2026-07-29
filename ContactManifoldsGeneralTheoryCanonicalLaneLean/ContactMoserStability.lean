import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.ContactStructure

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure ContactMoserStabilityPackage {C : ContactStructurePackage} where
  oneParameterFamilyContactForms : Prop
  isotopyExists : Prop
  rigidity : Prop

structure ContactMoserStabilityEvidence {C : ContactStructurePackage} (M : ContactMoserStabilityPackage C) where
  oneParameterFamilyContactFormsClosed : M.oneParameterFamilyContactForms
  isotopyExistsClosed : M.isotopyExists
  rigidityClosed : M.rigidity

def ContactMoserStabilityClosed {C : ContactStructurePackage} (M : ContactMoserStabilityPackage C) : Prop :=
  M.oneParameterFamilyContactForms ∧ M.isotopyExists ∧ M.rigidity

theorem contact_moser_stability_closed_from_evidence {C : ContactStructurePackage} (M : ContactMoserStabilityPackage C) (E : ContactMoserStabilityEvidence M) : ContactMoserStabilityClosed M := by
  exact And.intro E.oneParameterFamilyContactFormsClosed (And.intro E.isotopyExistsClosed E.rigidityClosed)

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse