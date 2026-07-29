import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure LegendrianSubmanifold (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] {n : ℕ} [Fact (Nat.Odd (finiteDimensional ℝ (TangentSpace M)))] where
  dim : ℕ
  contactStructure : ContactStructure M
  isotropic : Prop
  maximal : Prop

structure ContactSubmanifoldPackage where
  legendrianExists : Prop
  transverseExists : Prop

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse