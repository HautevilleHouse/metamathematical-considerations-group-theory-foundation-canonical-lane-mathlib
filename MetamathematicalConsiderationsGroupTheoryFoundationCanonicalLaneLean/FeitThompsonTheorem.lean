import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure FeitThompsonPackage where
  oddOrderGroupSolvable : Prop
  characterTheoryUsed : Prop
  involutionCentralizerControlled : Prop
  signalizerFunctorApplied : Prop

structure FeitThompsonEvidence (F : FeitThompsonPackage) where
  oddOrderGroupSolvableClosed : F.oddOrderGroupSolvable
  characterTheoryUsedClosed : F.characterTheoryUsed
  involutionCentralizerControlledClosed : F.involutionCentralizerControlled
  signalizerFunctorAppliedClosed : F.signalizerFunctorApplied

def FeitThompsonClosed (F : FeitThompsonPackage) : Prop :=
  F.oddOrderGroupSolvable ∧ F.characterTheoryUsed ∧ F.involutionCentralizerControlled ∧ F.signalizerFunctorApplied

theorem feit_thompson_closed_from_evidence
    (F : FeitThompsonPackage) (E : FeitThompsonEvidence F) : FeitThompsonClosed F := by
  exact And.intro E.oddOrderGroupSolvableClosed
    (And.intro E.characterTheoryUsedClosed
      (And.intro E.involutionCentralizerControlledClosed E.signalizerFunctorAppliedClosed))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse