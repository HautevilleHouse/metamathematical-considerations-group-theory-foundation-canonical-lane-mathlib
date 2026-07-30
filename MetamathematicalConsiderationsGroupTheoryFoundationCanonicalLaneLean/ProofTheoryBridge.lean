import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure ProofTheoryBridge where
  proofSystem : String
  consistencyProof : Prop
  completenessProof : Prop
  bridgeCondition : Prop
  consistencyProofClosed : consistencyProof
  completenessProofClosed : completenessProof
  bridgeConditionClosed : bridgeCondition

structure ProofTheoryBridgeEvidence (P : ProofTheoryBridge) where
  consistencyProofClosed : P.consistencyProof
  completenessProofClosed : P.completenessProof
  bridgeConditionClosed : P.bridgeCondition

def ProofTheoryBridgeClosed (P : ProofTheoryBridge) : Prop :=
  P.consistencyProof ∧ P.completenessProof ∧ P.bridgeCondition

theorem proof_theory_bridge_closed_from_evidence (P : ProofTheoryBridge) (E : ProofTheoryBridgeEvidence P) : ProofTheoryBridgeClosed P := by
  exact And.intro E.consistencyProofClosed (And.intro E.completenessProofClosed E.bridgeConditionClosed)

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse