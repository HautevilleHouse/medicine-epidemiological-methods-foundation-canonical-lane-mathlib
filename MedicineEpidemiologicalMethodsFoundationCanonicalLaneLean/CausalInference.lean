import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure CausalInferencePackage where
  treatmentAssignment : Prop
  outcomeMeasurement : Prop
  confoundingControl : Prop
  instrumentalVariable : Prop
  causalityEstablished : Prop

structure CausalInferenceEvidence (C : CausalInferencePackage) where
  treatmentAssignmentClosed : C.treatmentAssignment
  outcomeMeasurementClosed : C.outcomeMeasurement
  confoundingControlClosed : C.confoundingControl
  instrumentalVariableClosed : C.instrumentalVariable
  causalityEstablishedClosed : C.causalityEstablished

def CausalInferenceClosed (C : CausalInferencePackage) : Prop :=
  C.treatmentAssignment ∧ C.outcomeMeasurement ∧ C.confoundingControl ∧ C.instrumentalVariable ∧ C.causalityEstablished

theorem causal_inference_closed_from_evidence (C : CausalInferencePackage)
    (E : CausalInferenceEvidence C) : CausalInferenceClosed C := by
  exact And.intro E.treatmentAssignmentClosed
    (And.intro E.outcomeMeasurementClosed
      (And.intro E.confoundingControlClosed
        (And.intro E.instrumentalVariableClosed E.causalityEstablishedClosed)))

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse