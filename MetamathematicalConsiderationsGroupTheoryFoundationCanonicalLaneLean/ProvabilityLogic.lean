import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure ProvabilityLogic where
  provabilityPredicate : Prop
  fixedPointLemma : Prop
  modalAxioms : List Prop
  dataClosed : provabilityPredicate ∧ fixedPointLemma ∧ (∀ a ∈ modalAxioms, a)

def ProvabilityLogicClosed (L : ProvabilityLogic) : Prop :=
  L.provabilityPredicate ∧ L.fixedPointLemma ∧ (∀ a ∈ L.modalAxioms, a)

theorem provability_logic_closed_from_data (L : ProvabilityLogic) :
    ProvabilityLogicClosed L :=
  L.dataClosed

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse