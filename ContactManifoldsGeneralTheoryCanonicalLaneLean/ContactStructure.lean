import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure ContactManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  contactForm : Type w
  dimensionOdd : Prop
  contactFormNonDegenerate : Prop
  frobeniusCondition : Prop
  coorientable : Prop
  reebVectorField : Type z
  reebDynamics : Prop

def ContactManifoldClosed (M : ContactManifoldPackage) : Prop := M.contactFormNonDegenerate ∧ M.frobeniusCondition

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse