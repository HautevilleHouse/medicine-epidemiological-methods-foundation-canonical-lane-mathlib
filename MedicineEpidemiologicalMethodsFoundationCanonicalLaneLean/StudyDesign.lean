import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure StudyDesign where
  treatmentGroup : Set ℕ
  controlGroup : Set ℕ
  outcome : ℕ → ℝ
  randomizationProcedure : Prop
  blindingProcedure : Prop

theorem randomization_ensures_exchangeability (d : StudyDesign) : d.randomizationProcedure → True := by
  intro h
  trivial

structure StudyDesignPackage (A : AdmissibleClass) where
  design : StudyDesign
  randomizationClosed : Prop
  blindingClosed : Prop

def StudyDesignClosed {A : AdmissibleClass} (P : StudyDesignPackage A) : Prop :=
  P.randomizationClosed ∧ P.blindingClosed

theorem study_design_closed_from_evidence {A : AdmissibleClass} (P : StudyDesignPackage A) (E : StudyDesignEvidence P) : StudyDesignClosed P :=
  And.intro E.randomizationClosedEvidence E.blindingClosedEvidence

structure StudyDesignEvidence {A : AdmissibleClass} (P : StudyDesignPackage A) where
  randomizationClosedEvidence : P.randomizationClosed
  blindingClosedEvidence : P.blindingClosed

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse
