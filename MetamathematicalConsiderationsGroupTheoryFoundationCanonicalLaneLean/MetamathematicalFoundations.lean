import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure GroupTheoryLanguage where
  signature : Set String
  axioms : List String
  theorems : List String
  consistencyFlag : Bool

structure FormalSystem where
  language : GroupTheoryLanguage
  deductiveClosure : Prop
  proofWitness : deductiveClosure

def formalSystemClosed (F : FormalSystem) : Prop :=
  F.deductiveClosure

theorem formal_system_closed_from_witness (F : FormalSystem) : formalSystemClosed F :=
  F.proofWitness

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse