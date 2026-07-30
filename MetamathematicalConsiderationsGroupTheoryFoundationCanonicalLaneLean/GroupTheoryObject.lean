import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure AdmittedObject where
  group : Type
  operation : group → group → group
  identity : group
  inverse : group → group
  associativity : ∀ a b c : group, operation (operation a b) c = operation a (operation b c)
  identityLeft : ∀ a : group, operation identity a = a
  identityRight : ∀ a : group, operation a identity = a
  inverseLeft : ∀ a : group, operation (inverse a) a = identity
  inverseRight : ∀ a : group, operation a (inverse a) = identity
  conclusion : Prop

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse