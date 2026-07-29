import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure NormalFormPackage (G : RiemannianCurvaturePackage) where
  normalCoordinates : Type u
  geodesicNormalForm : Prop
  curvatureNormalForm : Prop
  normalCoordinatesDefined : Prop
  geodesicNormalFormClosed : geodesicNormalForm
  curvatureNormalFormClosed : curvatureNormalForm

structure NormalFormEvidence (G : RiemannianCurvaturePackage) (N : NormalFormPackage G) where
  normalCoordinatesDefinedClosed : N.normalCoordinatesDefined
  geodesicNormalFormClosedClosed : N.geodesicNormalFormClosed
  curvatureNormalFormClosedClosed : N.curvatureNormalFormClosed

def NormalFormClosed (G : RiemannianCurvaturePackage) (N : NormalFormPackage G) : Prop :=
  N.normalCoordinatesDefined ∧ N.geodesicNormalForm ∧ N.curvatureNormalForm

theorem normal_form_closed_from_evidence (G : RiemannianCurvaturePackage) (N : NormalFormPackage G) (E : NormalFormEvidence G N) : NormalFormClosed G N := by
  exact And.intro E.normalCoordinatesDefinedClosed (And.intro E.geodesicNormalFormClosedClosed E.curvatureNormalFormClosedClosed)

structure SignatureVarietyPackage (G : RiemannianCurvaturePackage) (J : JetBundlePackage) where
  signatureVariety : Type u
  codimensionEstimate : Prop
  signatureVarietyDefined : Prop
  codimensionEstimateClosed : codimensionEstimate

structure SignatureVarietyEvidence (G : RiemannianCurvaturePackage) (J : JetBundlePackage) (S : SignatureVarietyPackage G J) where
  signatureVarietyDefinedClosed : S.signatureVarietyDefined
  codimensionEstimateClosedClosed : S.codimensionEstimateClosed

def SignatureVarietyClosed (G : RiemannianCurvaturePackage) (J : JetBundlePackage) (S : SignatureVarietyPackage G J) : Prop :=
  S.signatureVarietyDefined ∧ S.codimensionEstimate

theorem signature_variety_closed_from_evidence (G : RiemannianCurvaturePackage) (J : JetBundlePackage) (S : SignatureVarietyPackage G J) (E : SignatureVarietyEvidence G J S) : SignatureVarietyClosed G J S := by
  exact And.intro E.signatureVarietyDefinedClosed E.codimensionEstimateClosedClosed

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse