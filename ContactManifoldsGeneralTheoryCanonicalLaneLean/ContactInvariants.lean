import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure ContactInvariant where
  name : String
  invariantType : Type
  invariantValue : Prop

def contactHomology (M : Type) [TopologicalSpace M] [ChartedSpace ℝ M] : Type := ℕ
def contactCohomology (M : Type) [TopologicalSpace M] [ChartedSpace ℝ M] : Type := ℕ

structure ContactInvariantsPackage where
  eulerClass : Prop
  panovInvariant : Prop

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse