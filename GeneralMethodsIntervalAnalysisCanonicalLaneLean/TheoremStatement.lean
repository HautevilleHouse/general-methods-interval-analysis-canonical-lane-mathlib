import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMethodsIntervalAnalysisCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  intervalAnalysisStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "GeneralMethodsIntervalAnalysis",
    theoremName := "GeneralMethodsIntervalAnalysis",
    theoremObject := "Interval Analysis Methods",
    classicalBoundary := "Open",
    intervalAnalysisStatement := "Interval analysis framework internalized",
    certificateLane := "interval_constrained",
    carriedRemainder := "Classical boundary carried as open" }

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.classicalBoundary = "Open"

end GeneralMethodsIntervalAnalysisCanonicalLaneLean
end HautevilleHouse
