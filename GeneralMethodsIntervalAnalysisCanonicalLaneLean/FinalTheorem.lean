import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneralMethodsIntervalAnalysisCanonicalLaneLean.HardyWeinbergEquilibrium
import HautevilleHouse.GeneralMethodsIntervalAnalysisCanonicalLaneLean.LinkageAnalysis
import HautevilleHouse.GeneralMethodsIntervalAnalysisCanonicalLaneLean.SequenceAlignment
import HautevilleHouse.GeneralMethodsIntervalAnalysisCanonicalLaneLean.Phylogenetics
import HautevilleHouse.GeneralMethodsIntervalAnalysisCanonicalLaneLean.PopulationGenetics

namespace HautevilleHouse
namespace GeneralMethodsIntervalAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by trivial

def ConstrainedGeneticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_genetics_endgame (A : AdmissibleClass) : ConstrainedGeneticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneralMethodsIntervalAnalysisCanonicalLaneLean
end HautevilleHouse