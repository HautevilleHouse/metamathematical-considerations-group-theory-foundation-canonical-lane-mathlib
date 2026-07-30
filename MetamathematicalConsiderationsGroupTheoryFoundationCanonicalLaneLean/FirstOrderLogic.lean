import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure FirstOrderLogicPackage where
  propositionalAxioms : Prop
  quantifierAxioms : Prop
  equalityAxioms : Prop
  modusPonens : Prop
  generalizationRule : Prop

structure FirstOrderLogicEvidence (F : FirstOrderLogicPackage) where
  propositionalAxiomsClosed : F.propositionalAxioms
  quantifierAxiomsClosed : F.quantifierAxioms
  equalityAxiomsClosed : F.equalityAxioms
  modusPonensClosed : F.modusPonens
  generalizationRuleClosed : F.generalizationRule

def FirstOrderLogicClosed (F : FirstOrderLogicPackage) : Prop :=
  F.propositionalAxioms ∧ F.quantifierAxioms ∧ F.equalityAxioms ∧
  F.modusPonens ∧ F.generalizationRule

theorem first_order_logic_closed_from_evidence (F : FirstOrderLogicPackage)
    (E : FirstOrderLogicEvidence F) : FirstOrderLogicClosed F := by
  exact And.intro E.propositionalAxiomsClosed
    (And.intro E.quantifierAxiomsClosed
      (And.intro E.equalityAxiomsClosed
        (And.intro E.modusPonensClosed E.generalizationRuleClosed)))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse