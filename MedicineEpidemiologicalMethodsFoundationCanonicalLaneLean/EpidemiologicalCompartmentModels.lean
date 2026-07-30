import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure CompartmentModelPackage where
  population : Type u
  compartments : List String
  transmissionRates : Type v
  compartmentEquations : Prop
  initialConditions : Prop
  parameterIdentification : Prop

structure CompartmentModelEvidence (M : CompartmentModelPackage) where
  compartmentEquationsClosed : M.compartmentEquations
  initialConditionsClosed : M.initialConditions
  parameterIdentificationClosed : M.parameterIdentification

def CompartmentModelClosed (M : CompartmentModelPackage) : Prop :=
  M.compartmentEquations ∧ M.initialConditions ∧ M.parameterIdentification

theorem compartment_model_closed_from_evidence (M : CompartmentModelPackage)
    (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  exact And.intro E.compartmentEquationsClosed (And.intro E.initialConditionsClosed E.parameterIdentificationClosed)

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse