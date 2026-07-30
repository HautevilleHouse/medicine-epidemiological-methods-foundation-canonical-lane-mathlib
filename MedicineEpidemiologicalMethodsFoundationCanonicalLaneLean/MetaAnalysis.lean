import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean

structure MetaAnalysisPackage where
  includedStudies : Type u
  effectSizes : Type v
  heterogeneity : Type w
  publicationBias : Type x
  fixedEffectModel : Prop
  randomEffectsModel : Prop
  forestPlot : Prop
  funnelPlot : Prop

structure MetaAnalysisEvidence (M : MetaAnalysisPackage) where
  fixedEffectModelClosed : M.fixedEffectModel
  randomEffectsModelClosed : M.randomEffectsModel
  forestPlotClosed : M.forestPlot
  funnelPlotClosed : M.funnelPlot

def MetaAnalysisClosed (M : MetaAnalysisPackage) : Prop :=
  M.fixedEffectModel ∧ M.randomEffectsModel ∧ M.forestPlot ∧ M.funnelPlot

theorem meta_analysis_closed_from_evidence (M : MetaAnalysisPackage)
    (E : MetaAnalysisEvidence M) : MetaAnalysisClosed M := by
  exact And.intro E.fixedEffectModelClosed (And.intro E.randomEffectsModelClosed (And.intro E.forestPlotClosed E.funnelPlotClosed))

end MedicineEpidemiologicalMethodsFoundationCanonicalLaneLean
end HautevilleHouse