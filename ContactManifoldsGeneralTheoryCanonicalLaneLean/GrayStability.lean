import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.ContactStructure

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure GrayStabilityPackage {M : ContactManifoldPackage} where
  oneParameterFamily : Type u
  stabilityTheorem : Prop
  isotopyExists : Prop
  isotopyExistence : Type v
  stabilityTheoremClosed : stabilityTheorem
  isotopyExistsClosed : isotopyExists

structure GrayEvidence {M : ContactManifoldPackage} (G : GrayStabilityPackage M) where
  stabilityTheoremClosed : G.stabilityTheorem
  isotopyExistsClosed : G.isotopyExists

def GrayStabilityClosed {M : ContactManifoldPackage} (G : GrayStabilityPackage M) : Prop :=
  G.stabilityTheorem ∧ G.isotopyExists

theorem gray_stability_closed_from_evidence {M : ContactManifoldPackage}
    (G : GrayStabilityPackage M) (E : GrayEvidence M G) : GrayStabilityClosed M G := by
  exact And.intro E.stabilityTheoremClosed E.isotopyExistsClosed

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse