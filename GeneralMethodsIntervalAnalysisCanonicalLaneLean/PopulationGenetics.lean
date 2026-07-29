import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMethodsIntervalAnalysisCanonicalLaneLean

/-!
# Population Genetics Package
-/

structure PopulationGeneticsPackage where
  genome : Type u
  variantFrequencies : genome → ℝ → ℝ → Prop
  selectionCoefficient : ℝ → Prop
  effectivePopulationSize : ℕ → Prop
  migrationRate : ℝ → ℝ → Prop
  geneticDrift : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  variantFrequenciesClosed : P.variantFrequencies
  selectionCoefficientClosed : P.selectionCoefficient
  effectivePopulationSizeClosed : P.effectivePopulationSize
  migrationRateClosed : P.migrationRate
  geneticDriftClosed : P.geneticDrift

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.variantFrequencies ∧ P.selectionCoefficient ∧ P.effectivePopulationSize ∧ P.migrationRate ∧ P.geneticDrift

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage) (E : PopulationGeneticsEvidence P) :
    PopulationGeneticsClosed P := by
  exact And.intro E.variantFrequenciesClosed (And.intro E.selectionCoefficientClosed (And.intro E.effectivePopulationSizeClosed (And.intro E.migrationRateClosed E.geneticDriftClosed)))

end GeneralMethodsIntervalAnalysisCanonicalLaneLean
end HautevilleHouse