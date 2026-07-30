import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure CompartmentModelPackage where
  population : Type u
  compartments : List String
  transitionRates : Type v
  initialCondition : Prop
  wellMixedAssumption : Prop
  conservationLaw : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  initialConditionClosed : C.initialCondition
  wellMixedAssumptionClosed : C.wellMixedAssumption
  conservationLawClosed : C.conservationLaw

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.initialCondition ∧ C.wellMixedAssumption ∧ C.conservationLaw

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.initialConditionClosed
    (And.intro E.wellMixedAssumptionClosed E.conservationLawClosed)

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse