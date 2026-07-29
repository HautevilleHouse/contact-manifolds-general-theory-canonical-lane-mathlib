import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContactManifoldsGeneralTheoryCanonicalLaneLean

structure ContactCohomologyPackage where
  complexType : Type u
  cohomologyGroups : Type v
  morseTheory : Type w
  spectralSequence : Type x
  invariantConditions : Prop

structure ContactCohomologyEvidence (C : ContactCohomologyPackage) where
  cohomologyGroupsClosed : C.cohomologyGroups
  morseTheoryClosed : C.morseTheory
  spectralSequenceClosed : C.spectralSequence
  invariantConditionsClosed : C.invariantConditions

def ContactCohomologyClosed (C : ContactCohomologyPackage) : Prop :=
  C.cohomologyGroups ∧ C.morseTheory ∧ C.spectralSequence ∧ C.invariantConditions

theorem contact_cohomology_closed_from_evidence (C : ContactCohomologyPackage)
    (E : ContactCohomologyEvidence C) : ContactCohomologyClosed C := by
  exact And.intro E.cohomologyGroupsClosed
    (And.intro E.morseTheoryClosed
      (And.intro E.spectralSequenceClosed E.invariantConditionsClosed))

end ContactManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse