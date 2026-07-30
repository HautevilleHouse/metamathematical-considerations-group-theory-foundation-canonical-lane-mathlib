import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure ZermeloFraenkelSetTheoryPackage where
  extensionalityAxiom : Prop
  foundationAxiom : Prop
  separationScheme : Prop
  pairingAxiom : Prop
  unionAxiom : Prop
  powersetAxiom : Prop
  infinityAxiom : Prop
  replacementScheme : Prop
  choiceAxiom : Prop

structure ZermeloFraenkelSetTheoryEvidence (Z : ZermeloFraenkelSetTheoryPackage) where
  extensionalityAxiomClosed : Z.extensionalityAxiom
  foundationAxiomClosed : Z.foundationAxiom
  separationSchemeClosed : Z.separationScheme
  pairingAxiomClosed : Z.pairingAxiom
  unionAxiomClosed : Z.unionAxiom
  powersetAxiomClosed : Z.powersetAxiom
  infinityAxiomClosed : Z.infinityAxiom
  replacementSchemeClosed : Z.replacementScheme
  choiceAxiomClosed : Z.choiceAxiom

def ZermeloFraenkelSetTheoryClosed (Z : ZermeloFraenkelSetTheoryPackage) : Prop :=
  Z.extensionalityAxiom ∧ Z.foundationAxiom ∧ Z.separationScheme ∧
  Z.pairingAxiom ∧ Z.unionAxiom ∧ Z.powersetAxiom ∧
  Z.infinityAxiom ∧ Z.replacementScheme ∧ Z.choiceAxiom

theorem zermelo_fraenkel_set_theory_closed_from_evidence (Z : ZermeloFraenkelSetTheoryPackage)
    (E : ZermeloFraenkelSetTheoryEvidence Z) : ZermeloFraenkelSetTheoryClosed Z := by
  exact And.intro E.extensionalityAxiomClosed
    (And.intro E.foundationAxiomClosed
      (And.intro E.separationSchemeClosed
        (And.intro E.pairingAxiomClosed
          (And.intro E.unionAxiomClosed
            (And.intro E.powersetAxiomClosed
              (And.intro E.infinityAxiomClosed
                (And.intro E.replacementSchemeClosed E.choiceAxiomClosed)))))))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse