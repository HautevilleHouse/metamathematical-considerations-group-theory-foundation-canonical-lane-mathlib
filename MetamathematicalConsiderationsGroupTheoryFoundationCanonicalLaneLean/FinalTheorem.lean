import canonicalLaneMathlib.AdmissibleClass
import MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

def ConstrainedMetamathematicalGroupTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metamathematical_group_theory_endgame (A : AdmissibleClass) :
    ConstrainedMetamathematicalGroupTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse