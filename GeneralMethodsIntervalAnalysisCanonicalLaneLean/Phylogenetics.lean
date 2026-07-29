import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMethodsIntervalAnalysisCanonicalLaneLean

/-!
# Phylogenetics Package
-/

structure PhylogeneticsPackage where
  taxa : Type u
  tree : Type v
  branchLengths : tree → ℝ → ℝ → Prop
  molecularClock : Prop
  likelihoodFunction : ℝ → Prop
  bootstrapSupport : ℝ → Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  branchLengthsClosed : P.branchLengths
  molecularClockClosed : P.molecularClock
  likelihoodFunctionClosed : P.likelihoodFunction
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.branchLengths ∧ P.molecularClock ∧ P.likelihoodFunction ∧ P.bootstrapSupport

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
    PhylogeneticsClosed P := by
  exact And.intro E.branchLengthsClosed (And.intro E.molecularClockClosed (And.intro E.likelihoodFunctionClosed E.bootstrapSupportClosed))

end GeneralMethodsIntervalAnalysisCanonicalLaneLean
end HautevilleHouse