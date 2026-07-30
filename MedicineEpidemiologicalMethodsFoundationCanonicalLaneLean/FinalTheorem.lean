import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

def ConstrainedMedicineEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medicine_epidemiology_endgame (A : AdmissibleClass) :
    ConstrainedMedicineEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse