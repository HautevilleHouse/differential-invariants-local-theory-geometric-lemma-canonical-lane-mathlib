import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure GeometricLemmaPackage {G : RiemannianCurvaturePackage} {J : JetBundlePackage} {I : InvariantJetPackage J} {M : MovingFramePackage I} (D : InvariantDerivativePackage M) where
  localFiniteness : Prop
  equivalenceProblem : Prop
  localFinitenessClosed : localFiniteness
  equivalenceProblemClosed : equivalenceProblem

structure GeometricLemmaEvidence {G : RiemannianCurvaturePackage} {J : JetBundlePackage} {I : InvariantJetPackage J} {M : MovingFramePackage I} {D : InvariantDerivativePackage M} (L : GeometricLemmaPackage D) where
  localFinitenessClosedClosed : L.localFinitenessClosed
  equivalenceProblemClosedClosed : L.equivalenceProblemClosed

def GeometricLemmaClosed {G : RiemannianCurvaturePackage} {J : JetBundlePackage} {I : InvariantJetPackage J} {M : MovingFramePackage I} {D : InvariantDerivativePackage M} (L : GeometricLemmaPackage D) : Prop :=
  L.localFiniteness ∧ L.equivalenceProblem

theorem geometric_lemma_closed_from_evidence {G : RiemannianCurvaturePackage} {J : JetBundlePackage} {I : InvariantJetPackage J} {M : MovingFramePackage I} {D : InvariantDerivativePackage M} (L : GeometricLemmaPackage D) (E : GeometricLemmaEvidence L) : GeometricLemmaClosed L := by
  exact And.intro E.localFinitenessClosedClosed E.equivalenceProblemClosedClosed

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse