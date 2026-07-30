import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure HomomorphismPackage where
  kernelNormality : Prop
  firstIsomorphism : Prop
  compositionSeries : Prop
  abelianization : Prop

structure HomomorphismEvidence (H : HomomorphismPackage) where
  kernelNormalityClosed : H.kernelNormality
  firstIsomorphismClosed : H.firstIsomorphism
  compositionSeriesClosed : H.compositionSeries
  abelianizationClosed : H.abelianization

def HomomorphismClosed (H : HomomorphismPackage) : Prop :=
  H.kernelNormality ∧ H.firstIsomorphism ∧
  H.compositionSeries ∧ H.abelianization

theorem homomorphism_closed_from_evidence (H : HomomorphismPackage)
    (E : HomomorphismEvidence H) : HomomorphismClosed H := by
  exact And.intro E.kernelNormalityClosed
    (And.intro E.firstIsomorphismClosed
      (And.intro E.compositionSeriesClosed E.abelianizationClosed))

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse