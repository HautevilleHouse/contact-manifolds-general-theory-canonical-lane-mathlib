import canonicalLaneMathlib.AdmissibleClass
import ContactStructure
import LegendrianSubmanifolds

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure ConvexHypersurface (M : Type*) [TopologicalSpace M] [Manifold M] (C : ContactStructure M) where
  hypersurface : Submanifold M (codim := 1)
  contactFormRestriction : (C.contactForm).restrictTo hypersurface
  characteristicFoliation : Foliation hypersurface
  convexityCondition : FoliationIsCharacteristic contactFormRestriction characteristicFoliation

structure ConvexHypersurfaceEvidence (M : Type*) [TopologicalSpace M] [Manifold M] {C : ContactStructure M} (H : ConvexHypersurface M C) where
  hypersurfaceClosed : H.hypersurface
  contactFormRestrictionClosed : H.contactFormRestriction
  characteristicFoliationClosed : H.characteristicFoliation
  convexityConditionClosed : H.convexityCondition

def ConvexHypersurfaceClosed (M : Type*) [TopologicalSpace M] [Manifold M] {C : ContactStructure M} (H : ConvexHypersurface M C) : Prop :=
  H.hypersurface ∧ H.contactFormRestriction ∧ H.characteristicFoliation ∧ H.convexityCondition

theorem convex_hypersurface_closed_from_evidence (M : Type*) [TopologicalSpace M] [Manifold M] {C : ContactStructure M} (H : ConvexHypersurface M C) (E : ConvexHypersurfaceEvidence M H) : ConvexHypersurfaceClosed M H := by
  exact And.intro E.hypersurfaceClosed (And.intro E.contactFormRestrictionClosed (And.intro E.characteristicFoliationClosed E.convexityConditionClosed))

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse