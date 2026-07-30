import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure GroupAxiomPackage where
  associativity : Prop
  identity : Prop
  inverses : Prop
  closure : Prop

structure GroupAxiomEvidence (G : GroupAxiomPackage) where
  associativityClosed : G.associativity
  identityClosed : G.identity
  inversesClosed : G.inverses
  closureClosed : G.closure

def GroupAxiomClosed (G : GroupAxiomPackage) : Prop :=
  G.associativity ∧ G.identity ∧ G.inverses ∧ G.closure

theorem group_axiom_closed_from_evidence (G : GroupAxiomPackage)
    (E : GroupAxiomEvidence G) : GroupAxiomClosed G := by
  exact And.intro E.associativityClosed
    (And.intro E.identityClosed
      (And.intro E.inversesClosed E.closureClosed))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse