import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMethodsIntervalAnalysisCanonicalLaneLean

/-!
# Linkage Analysis Package
-/

structure LinkageAnalysisPackage where
  pedigree : Type u
  markers : Type v
  recombinationFraction : ℝ → ℝ → Prop
  lodScore : ℝ → Prop
  linkageEquilibrium : Prop
  geneticMap : ℝ → ℝ → Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  lodScoreClosed : L.lodScore
  linkageEquilibriumClosed : L.linkageEquilibrium
  geneticMapClosed : L.geneticMap

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.lodScore ∧ L.linkageEquilibrium ∧ L.geneticMap

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed (And.intro E.lodScoreClosed (And.intro E.linkageEquilibriumClosed E.geneticMapClosed))

end GeneralMethodsIntervalAnalysisCanonicalLaneLean
end HautevilleHouse