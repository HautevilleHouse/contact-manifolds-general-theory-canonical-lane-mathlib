import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.ContactStructure

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure DarbouxTheoremPackage {M : ContactManifoldPackage} where
  localCoordinateChart : Type u
  darbouxNeighborhood : Prop
  standardContactForm : Prop
  diffeomorphismToStandard : Prop
  darbouxLemmaProved : Prop
  darbouxNeighborhoodClosed : darbouxNeighborhood
  standardContactFormClosed : standardContactForm
  diffeomorphismToStandardClosed : diffeomorphismToStandard
  darbouxLemmaProvedClosed : darbouxLemmaProved

structure DarbouxEvidence {M : ContactManifoldPackage} (D : DarbouxTheoremPackage M) where
  darbouxNeighborhoodClosed : D.darbouxNeighborhood
  diffeomorphismToStandardClosed : D.diffeomorphismToStandard
  darbouxLemmaProvedClosed : D.darbouxLemmaProved

def DarbouxTheoremClosed {M : ContactManifoldPackage} (D : DarbouxTheoremPackage M) : Prop :=
  D.darbouxNeighborhood ∧ D.diffeomorphismToStandard ∧ D.darbouxLemmaProved

theorem darboux_theorem_closed_from_evidence {M : ContactManifoldPackage}
    (D : DarbouxTheoremPackage M) (E : DarbouxEvidence M D) : DarbouxTheoremClosed M D := by
  exact And.intro E.darbouxNeighborhoodClosed (And.intro E.diffeomorphismToStandardClosed E.darbouxLemmaProvedClosed)

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse