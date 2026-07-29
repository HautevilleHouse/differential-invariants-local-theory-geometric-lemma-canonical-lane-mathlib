import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure ConnectionCurvaturePackage (M : Type u) where
  connectionForm : Type
  curvatureForm : Type
  bianchiIdentity : Prop
  structureEquation : Prop
  gaugeTransformation : Prop

structure ConnectionCurvatureEvidence (C : ConnectionCurvaturePackage M) where
  bianchiIdentityClosed : C.bianchiIdentity
  structureEquationClosed : C.structureEquation
  gaugeTransformationClosed : C.gaugeTransformation

def ConnectionCurvatureClosed (C : ConnectionCurvaturePackage M) : Prop :=
  C.bianchiIdentity ∧ C.structureEquation ∧ C.gaugeTransformation

theorem connection_curvature_closed_from_evidence (C : ConnectionCurvaturePackage M) (E : ConnectionCurvatureEvidence C) : ConnectionCurvatureClosed C := by
  exact And.intro E.bianchiIdentityClosed (And.intro E.structureEquationClosed E.gaugeTransformationClosed)

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse