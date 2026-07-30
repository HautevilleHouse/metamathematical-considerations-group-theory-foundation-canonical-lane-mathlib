import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure ClassificationEndgamePackage where
  targetGroup : Type u
  targetTopology : TopologicalSpace targetGroup
  finiteSimpleGroup : Prop
  classificationMatchesList : Prop

structure ClassificationEndgameEvidence (E : ClassificationEndgamePackage) where
  finiteSimpleGroupClosed : E.finiteSimpleGroup
  classificationMatchesListClosed : E.classificationMatchesList

def ClassificationEndgameClosed (E : ClassificationEndgamePackage) : Prop :=
  E.finiteSimpleGroup ∧ E.classificationMatchesList

theorem classification_endgame_closed_from_evidence
    (E : ClassificationEndgamePackage) (Ev : ClassificationEndgameEvidence E) :
    ClassificationEndgameClosed E := by
  exact And.intro Ev.finiteSimpleGroupClosed Ev.classificationMatchesListClosed

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse