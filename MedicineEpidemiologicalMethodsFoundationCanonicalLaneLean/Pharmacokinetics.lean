import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure PharmacokineticPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  bioavailability : Prop
  linearKinetics : Prop

structure PharmacokineticEvidence (P : PharmacokineticPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  bioavailabilityClosed : P.bioavailability
  linearKineticsClosed : P.linearKinetics

def PharmacokineticClosed (P : PharmacokineticPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.bioavailability ∧ P.linearKinetics

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticPackage)
    (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.bioavailabilityClosed E.linearKineticsClosed)))

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse