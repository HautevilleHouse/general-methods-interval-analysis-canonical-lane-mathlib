import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMethodsIntervalAnalysisCanonicalLaneLean

/-!
# Hardy-Weinberg Equilibrium Package
-/

structure HardyWeinbergPackage where
  population : Type u
  alleleFrequencies : population → ℝ → ℝ → Prop
  equilibriumCondition : Prop
  randomMating : Prop
  noEvolutionaryForces : Prop
  chiSquareTest : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  equilibriumConditionClosed : H.equilibriumCondition
  randomMatingClosed : H.randomMating
  noEvolutionaryForcesClosed : H.noEvolutionaryForces
  chiSquareTestClosed : H.chiSquareTest

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.randomMating ∧ H.noEvolutionaryForces ∧ H.chiSquareTest

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.equilibriumConditionClosed (And.intro E.randomMatingClosed (And.intro E.noEvolutionaryForcesClosed E.chiSquareTestClosed))

end GeneralMethodsIntervalAnalysisCanonicalLaneLean
end HautevilleHouse