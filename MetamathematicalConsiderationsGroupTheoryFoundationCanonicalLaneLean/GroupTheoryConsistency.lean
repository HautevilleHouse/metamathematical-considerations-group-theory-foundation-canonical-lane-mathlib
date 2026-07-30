import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure GroupTheoryConsistency where
  axiomsConsistent : Prop
  modelExhibited : Prop
  consistencyCertificate : axiomsConsistent ∧ modelExhibited

def GroupTheoryConsistencyClosed (C : GroupTheoryConsistency) : Prop :=
  C.axiomsConsistent ∧ C.modelExhibited

theorem group_theory_consistency_closed_from_certificate (C : GroupTheoryConsistency) :
    GroupTheoryConsistencyClosed C :=
  And.intro C.axiomsConsistent C.modelExhibited

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse