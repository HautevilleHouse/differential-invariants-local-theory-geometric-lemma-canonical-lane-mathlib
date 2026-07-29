import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure InvariantSignaturePackage (M : Type u) where
  differentialInvariant : Type
  signatureMap : Type
  isGenerating : Prop
  isComplete : Prop
  finitenessProperty : Prop

structure InvariantSignatureEvidence (S : InvariantSignaturePackage M) where
  isGeneratingClosed : S.isGenerating
  isCompleteClosed : S.isComplete
  finitenessPropertyClosed : S.finitenessProperty

def InvariantSignatureClosed (S : InvariantSignaturePackage M) : Prop :=
  S.isGenerating ∧ S.isComplete ∧ S.finitenessProperty

theorem invariant_signature_closed_from_evidence (S : InvariantSignaturePackage M) (E : InvariantSignatureEvidence S) : InvariantSignatureClosed S := by
  exact And.intro E.isGeneratingClosed (And.intro E.isCompleteClosed E.finitenessPropertyClosed)

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse