import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure GroupTheoryAxiomsPackage where
  closureAxiom : Prop
  associativityAxiom : Prop
  identityAxiom : Prop
  inverseAxiom : Prop
  modelsAgree : Prop

structure GroupTheoryAxiomsEvidence (A : GroupTheoryAxiomsPackage) where
  closureAxiomClosed : A.closureAxiom
  associativityAxiomClosed : A.associativityAxiom
  identityAxiomClosed : A.identityAxiom
  inverseAxiomClosed : A.inverseAxiom
  modelsAgreeClosed : A.modelsAgree

def GroupTheoryAxiomsClosed (A : GroupTheoryAxiomsPackage) : Prop :=
  A.closureAxiom ∧ A.associativityAxiom ∧ A.identityAxiom ∧ A.inverseAxiom ∧ A.modelsAgree

theorem group_theory_axioms_closed_from_evidence (A : GroupTheoryAxiomsPackage)
    (E : GroupTheoryAxiomsEvidence A) : GroupTheoryAxiomsClosed A := by
  exact And.intro E.closureAxiomClosed
    (And.intro E.associativityAxiomClosed
      (And.intro E.identityAxiomClosed
        (And.intro E.inverseAxiomClosed E.modelsAgreeClosed)))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse