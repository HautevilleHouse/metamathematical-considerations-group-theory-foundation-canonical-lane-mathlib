import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroupTheoryAdmittedObject where
  groupType : Type
  groupOperation : groupType → groupType → groupType
  identityElement : groupType
  inverseOperation : groupType → groupType
  groupAxioms : Prop
  groupAxiomsHeld : groupAxioms
  conclusion : groupAxioms

structure AdmissibleClass where
  object : GroupTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse