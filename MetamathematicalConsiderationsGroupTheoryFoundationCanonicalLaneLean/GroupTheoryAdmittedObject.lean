import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure GroupTheorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GroupTheoryAdmittedObject where
  space : GroupTheorySpace
  finiteGroup : Prop
  simpleGroup : Prop
  classificationModel : Type
  classificationTopology : TopologicalSpace classificationModel
  classified : Prop
  conclusion : classified

structure GroupTheoryEndgameState where
  object : GroupTheoryAdmittedObject

def GroupTheoryWitnessClosed (O : GroupTheoryAdmittedObject) : Prop :=
  O.classified

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse