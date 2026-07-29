import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure OverTwistedPackage where
  ambientManifold : ContactPackage
  overTwistedCondition : Prop
  homotopyPrinciple : Prop
  flexibility : Prop
  existenceResult : Prop

structure OverTwistedEvidence (O : OverTwistedPackage) where
  overTwistedConditionClosed : O.overTwistedCondition
  homotopyPrincipleClosed : O.homotopyPrinciple
  flexibilityClosed : O.flexibility
  existenceResultClosed : O.existenceResult

def OverTwistedClosed (O : OverTwistedPackage) : Prop :=
  O.overTwistedCondition ∧ O.homotopyPrinciple ∧ O.flexibility ∧ O.existenceResult

theorem overTwisted_closed_from_evidence (O : OverTwistedPackage)
    (E : OverTwistedEvidence O) : OverTwistedClosed O := by
  exact And.intro E.overTwistedConditionClosed
    (And.intro E.homotopyPrincipleClosed
      (And.intro E.flexibilityClosed E.existenceResultClosed))

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse