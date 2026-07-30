import canonicalLaneMathlib.AdmissibleClass
import MetamathematicalFoundations
import IncompletenessPhenomena
import GroupTheoryConsistency
import ProvabilityLogic

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

def MetamathematicalGroupTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem metamathematical_group_theory_endgame (A : AdmissibleClass) :
    MetamathematicalGroupTheoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse