import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure SubgroupLatticePackage where
  intersectionStable : Prop
  unionConditional : Prop
  latticeOrder : Prop
  maximalSubgroups : Prop

structure SubgroupLatticeEvidence (S : SubgroupLatticePackage) where
  intersectionStableClosed : S.intersectionStable
  unionConditionalClosed : S.unionConditional
  latticeOrderClosed : S.latticeOrder
  maximalSubgroupsClosed : S.maximalSubgroups

def SubgroupLatticeClosed (S : SubgroupLatticePackage) : Prop :=
  S.intersectionStable ∧ S.unionConditional ∧
  S.latticeOrder ∧ S.maximalSubgroups

theorem subgroup_lattice_closed_from_evidence (S : SubgroupLatticePackage)
    (E : SubgroupLatticeEvidence S) : SubgroupLatticeClosed S := by
  exact And.intro E.intersectionStableClosed
    (And.intro E.unionConditionalClosed
      (And.intro E.latticeOrderClosed E.maximalSubgroupsClosed))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse