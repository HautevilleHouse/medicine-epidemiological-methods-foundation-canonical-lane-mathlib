import HautevilleHouse.MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure EpidAdmittedObject where
  population : Type
  compartmentModel : Type
  incidenceRate : Prop
  recoveredImmune : Prop
  conclusion : incidenceRate ∧ recoveredImmune

def EpidWitnessClosed (O : EpidAdmittedObject) : Prop :=
  O.incidenceRate ∧ O.recoveredImmune

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse