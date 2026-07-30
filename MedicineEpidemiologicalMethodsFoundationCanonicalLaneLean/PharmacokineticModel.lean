import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure PharmacokineticPackage where
  drugSubstance : Type u
  compartments : List String
  absorptionRate : Type v
  distributionVolume : Type w
  eliminationRate : Type x
  concentrationEquations : Prop
  doseRegimen : Prop
  individualVariability : Prop

structure PharmacokineticEvidence (P : PharmacokineticPackage) where
  concentrationEquationsClosed : P.concentrationEquations
  doseRegimenClosed : P.doseRegimen
  individualVariabilityClosed : P.individualVariability

def PharmacokineticClosed (P : PharmacokineticPackage) : Prop :=
  P.concentrationEquations ∧ P.doseRegimen ∧ P.individualVariability

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticPackage)
    (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.concentrationEquationsClosed (And.intro E.doseRegimenClosed E.individualVariabilityClosed)

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse