import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContactManifoldsGeneralTheoryCanonicalLaneLean.ContactStructure

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure LegendrianSubmanifoldPackage {C : ContactStructurePackage} where
  submanifold : Type u
  embedding : submanifold → C.manifold
  tangentCondition : Prop
  isotopyClass : Prop

structure LegendrianSubmanifoldEvidence {C : ContactStructurePackage} (L : LegendrianSubmanifoldPackage C) where
  tangentConditionClosed : L.tangentCondition
  isotopyClassClosed : L.isotopyClass

def LegendrianSubmanifoldClosed {C : ContactStructurePackage} (L : LegendrianSubmanifoldPackage C) : Prop :=
  L.tangentCondition ∧ L.isotopyClass

theorem legendrian_submanifold_closed_from_evidence {C : ContactStructurePackage} (L : LegendrianSubmanifoldPackage C) (E : LegendrianSubmanifoldEvidence L) : LegendrianSubmanifoldClosed L := by
  exact And.intro E.tangentConditionClosed E.isotopyClassClosed

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse