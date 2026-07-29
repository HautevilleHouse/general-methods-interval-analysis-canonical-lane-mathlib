import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMethodsIntervalAnalysisCanonicalLaneLean

/-!
# Sequence Alignment Package
-/

structure SequenceAlignmentPackage where
  sequences : Type u → Type v
  alignment : Type u → Type v → Type w
  scoringMatrix : Type u → ℝ → ℝ
  gapPenalty : ℝ
  optimalAlignment : Prop
  dynamicProgramming : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  scoringMatrixClosed : S.scoringMatrix
  gapPenaltyClosed : S.gapPenalty = 5.0
  optimalAlignmentClosed : S.optimalAlignment
  dynamicProgrammingClosed : S.dynamicProgramming

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.scoringMatrix ∧ S.gapPenalty = 5.0 ∧ S.optimalAlignment ∧ S.dynamicProgramming

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.scoringMatrixClosed (And.intro E.gapPenaltyClosed (And.intro E.optimalAlignmentClosed E.dynamicProgrammingClosed))

end GeneralMethodsIntervalAnalysisCanonicalLaneLean
end HautevilleHouse