import canonicalLaneMathlib.AdmissibleClass
import ContactStructure
import DarbouxTheorem

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure ContactHomotopy (M : Type*) [TopologicalSpace M] [Manifold M] (C0 C1 : ContactStructure M) where
  homotopy : ℝ → ContactStructure M
  smoothHomotopy : Smooth (fun t => (homotopy t).contactForm)
  startAtC0 : homotopy 0 = C0
  endAtC1 : homotopy 1 = C1
  intermediateContact : ∀ (t : ℝ), ContactStructureClosed (homotopy t)

structure ContactHomotopyEvidence (M : Type*) [TopologicalSpace M] [Manifold M] {C0 C1 : ContactStructure M} (H : ContactHomotopy M C0 C1) where
  smoothHomotopyClosed : H.smoothHomotopy
  startAtC0Closed : H.startAtC0
  endAtC1Closed : H.endAtC1
  intermediateContactClosed : H.intermediateContact

def ContactHomotopyClosed (M : Type*) [TopologicalSpace M] [Manifold M] {C0 C1 : ContactStructure M} (H : ContactHomotopy M C0 C1) : Prop :=
  H.smoothHomotopy ∧ H.startAtC0 ∧ H.endAtC1 ∧ H.intermediateContact

theorem contact_homotopy_closed_from_evidence (M : Type*) [TopologicalSpace M] [Manifold M] {C0 C1 : ContactStructure M} (H : ContactHomotopy M C0 C1) (E : ContactHomotopyEvidence M H) : ContactHomotopyClosed M H := by
  exact And.intro E.smoothHomotopyClosed (And.intro E.startAtC0Closed (And.intro E.endAtC1Closed E.intermediateContactClosed))

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse