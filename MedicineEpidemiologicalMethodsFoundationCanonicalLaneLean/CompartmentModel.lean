import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure CompartmentModel where
  susceptible : Prop
  infected : Prop
  recovered : Prop
  sirdynamics : Prop

structure CompartmentModelEvidence (C : CompartmentModel) where
  susceptibleClosed : C.susceptible
  infectedClosed : C.infected
  recoveredClosed : C.recovered
  sirdynamicsClosed : C.sirdynamics

def CompartmentModelClosed (C : CompartmentModel) : Prop :=
  C.susceptible ∧ C.infected ∧ C.recovered ∧ C.sirdynamics

theorem compartment_model_closed_from_evidence (C : CompartmentModel) (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.susceptibleClosed (And.intro E.infectedClosed (And.intro E.recoveredClosed E.sirdynamicsClosed))

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse
