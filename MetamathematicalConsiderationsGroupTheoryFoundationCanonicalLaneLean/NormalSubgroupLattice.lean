import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure NormalSubgroup {G : Type} [Group G] (H : Subgroup G) where
  normal : ∀ g : G, g • (H.carrier : Set G) = H.carrier

def QuotientGroup {G : Type} [Group G] (H : NormalSubgroup G) : Type :=
  Quotient (H.normal : Setoid G)

instance {G : Type} [Group G] (H : NormalSubgroup G) : Group (QuotientGroup H) :=
  inferInstanceAs (Group (G ⧸ H))

theorem normal_subgroup_lattice_complete {G : Type} [Group G] :
    CompleteLattice (Subgroup G) := by
  infer_instance

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse