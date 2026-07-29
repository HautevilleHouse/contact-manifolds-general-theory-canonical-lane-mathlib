import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure LegendrianKnotPackage where
  ambientManifold : ContactPackage
  knotType : Type u
  legendrianCondition : Prop
  frontProjection : Type v
  classicalInvariants : Type w

structure LegendrianKnotEvidence (L : LegendrianKnotPackage) where
  legendrianConditionClosed : L.legendrianCondition
  frontProjectionClosed : L.frontProjection
  classicalInvariantsClosed : L.classicalInvariants

def LegendrianKnotClosed (L : LegendrianKnotPackage) : Prop :=
  L.legendrianCondition ∧ L.frontProjection ∧ L.classicalInvariants

theorem legendrian_knot_closed_from_evidence (L : LegendrianKnotPackage)
    (E : LegendrianKnotEvidence L) : LegendrianKnotClosed L := by
  exact And.intro E.legendrianConditionClosed
    (And.intro E.frontProjectionClosed E.classicalInvariantsClosed)

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse