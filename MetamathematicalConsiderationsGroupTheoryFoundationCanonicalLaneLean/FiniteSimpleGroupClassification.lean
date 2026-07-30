import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure FiniteSimpleGroupClassificationPackage where
  classificationTheorem : Prop
  oddOrderTheorem : Prop
  involutionsControlled : Prop
  componentClassification : Prop

structure FiniteSimpleGroupClassificationEvidence (C : FiniteSimpleGroupClassificationPackage) where
  classificationTheoremClosed : C.classificationTheorem
  oddOrderTheoremClosed : C.oddOrderTheorem
  involutionsControlledClosed : C.involutionsControlled
  componentClassificationClosed : C.componentClassification

def FiniteSimpleGroupClassificationClosed (C : FiniteSimpleGroupClassificationPackage) : Prop :=
  C.classificationTheorem ∧ C.oddOrderTheorem ∧ C.involutionsControlled ∧ C.componentClassification

theorem finite_simple_group_classification_closed_from_evidence
    (C : FiniteSimpleGroupClassificationPackage) (E : FiniteSimpleGroupClassificationEvidence C) :
    FiniteSimpleGroupClassificationClosed C := by
  exact And.intro E.classificationTheoremClosed
    (And.intro E.oddOrderTheoremClosed
      (And.intro E.involutionsControlledClosed E.componentClassificationClosed))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse