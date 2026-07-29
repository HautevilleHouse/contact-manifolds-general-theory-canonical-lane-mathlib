import canonicalLaneMathlib.AdmissibleClass
import ContactStructure

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure ReebVectorField (M : Type*) [TopologicalSpace M] [Manifold M] (C : ContactStructure M) where
  vectorField : ∀ (p : M), T_p M
  property1 : ∀ (p : M), C.contactForm p (vectorField p) = 1
  property2 : ∀ (p : M), ∀ (v : T_p M), C.contactForm p v = 0 → (LieDerivative v C.contactForm) = 0

structure ReebEvidence (M : Type*) [TopologicalSpace M] [Manifold M] {C : ContactStructure M} (R : ReebVectorField M C) where
  property1Closed : R.property1
  property2Closed : R.property2

def ReebClosed (M : Type*) [TopologicalSpace M] [Manifold M] {C : ContactStructure M} (R : ReebVectorField M C) : Prop :=
  R.property1 ∧ R.property2

theorem reeb_closed_from_evidence (M : Type*) [TopologicalSpace M] [Manifold M] {C : ContactStructure M} (R : ReebVectorField M C) (E : ReebEvidence M R) : ReebClosed M R := by
  exact And.intro E.property1Closed E.property2Closed

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse