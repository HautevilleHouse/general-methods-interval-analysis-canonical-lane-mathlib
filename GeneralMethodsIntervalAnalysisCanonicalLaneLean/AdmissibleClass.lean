import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMethodsIntervalAnalysisCanonicalLaneLean

structure IntervalAdmittedObject where
  interval : Type
  intervalTopology : TopologicalSpace interval
  intervalAnalysisFramework : Prop
  conclusion : intervalAnalysisFramework

structure AdmissibleClass where
  object : IntervalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end GeneralMethodsIntervalAnalysisCanonicalLaneLean
end HautevilleHouse
