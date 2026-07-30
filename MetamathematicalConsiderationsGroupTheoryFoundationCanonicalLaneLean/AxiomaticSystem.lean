import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure AxiomaticSystem where
  primitiveNotions : List String
  axioms : List String
  consistency : Prop
  completeness : Prop
  consistencyClosed : consistency
  completenessClosed : completeness

structure AxiomaticSystemEvidence (A : AxiomaticSystem) where
  consistencyClosed : A.consistency
  completenessClosed : A.completeness

def AxiomaticSystemClosed (A : AxiomaticSystem) : Prop :=
  A.consistency ∧ A.completeness

theorem axiomatic_system_closed_from_evidence (A : AxiomaticSystem) (E : AxiomaticSystemEvidence A) : AxiomaticSystemClosed A := by
  exact And.intro E.consistencyClosed E.completenessClosed

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse