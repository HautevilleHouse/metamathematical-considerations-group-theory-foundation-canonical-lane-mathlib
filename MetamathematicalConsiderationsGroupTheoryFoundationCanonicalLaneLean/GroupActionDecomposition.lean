import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure GroupActionPackage where
  orbitStabilizer : Prop
  classEquation : Prop
  burnsideLemma : Prop
  permutationRepresentation : Prop

structure GroupActionEvidence (A : GroupActionPackage) where
  orbitStabilizerClosed : A.orbitStabilizer
  classEquationClosed : A.classEquation
  burnsideLemmaClosed : A.burnsideLemma
  permutationRepresentationClosed : A.permutationRepresentation

def GroupActionClosed (A : GroupActionPackage) : Prop :=
  A.orbitStabilizer ∧ A.classEquation ∧
  A.burnsideLemma ∧ A.permutationRepresentation

theorem group_action_closed_from_evidence (A : GroupActionPackage)
    (E : GroupActionEvidence A) : GroupActionClosed A := by
  exact And.intro E.orbitStabilizerClosed
    (And.intro E.classEquationClosed
      (And.intro E.burnsideLemmaClosed E.permutationRepresentationClosed))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse