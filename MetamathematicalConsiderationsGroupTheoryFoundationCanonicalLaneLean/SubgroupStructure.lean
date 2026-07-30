import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure Subgroup {G : Type} [Group G] where
  carrier : Set G
  contains_one : (1 : G) ∈ carrier
  closed_mul : ∀ a b, a ∈ carrier → b ∈ carrier → a * b ∈ carrier
  closed_inv : ∀ a, a ∈ carrier → a⁻¹ ∈ carrier

def SubgroupClosure {G : Type} [Group G] (S : Set G) : Subgroup G :=
  { carrier := Subgroup.closure S
    contains_one := Subgroup.one_mem _
    closed_mul := Subgroup.mul_mem _
    closed_inv := Subgroup.inv_mem _
  }

theorem subgroup_closure_idempotent {G : Type} [Group G] (S : Set G) :
    SubgroupClosure (SubgroupClosure S).carrier = SubgroupClosure S := by
  ext; simp [SubgroupClosure]

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse