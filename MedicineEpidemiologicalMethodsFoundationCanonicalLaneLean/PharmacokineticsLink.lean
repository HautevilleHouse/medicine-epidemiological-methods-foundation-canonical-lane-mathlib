import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure PharmacokineticsPackage where
  absorption : Prop
  distribution : Prop
  metabolism : Prop
  excretion : Prop
  compartmentTransition : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  absorptionClosed : P.absorption
  distributionClosed : P.distribution
  metabolismClosed : P.metabolism
  excretionClosed : P.excretion
  compartmentTransitionClosed : P.compartmentTransition

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.absorption ∧ P.distribution ∧ P.metabolism ∧ P.excretion ∧ P.compartmentTransition

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage) (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P := by
  exact And.intro E.absorptionClosed (And.intro E.distributionClosed (And.intro E.metabolismClosed (And.intro E.excretionClosed E.compartmentTransitionClosed)))

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse
