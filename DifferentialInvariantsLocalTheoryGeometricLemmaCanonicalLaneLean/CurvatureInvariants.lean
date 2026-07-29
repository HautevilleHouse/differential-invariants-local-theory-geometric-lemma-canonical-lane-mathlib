import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure LocalCurvatureInvariantPackage where
  manifoldType : Type u
  connectionType : Type v
  curvatureFormType : Type w
  metricCompatibility : Prop
  torsionFreeCondition : Prop
  riemannCurvatureDefined : Prop
  ricciCurvatureDefined : Prop
  scalarCurvatureDefined : Prop

structure LocalCurvatureInvariantEvidence (L : LocalCurvatureInvariantPackage) where
  metricCompatibilityClosed : L.metricCompatibility
  torsionFreeConditionClosed : L.torsionFreeCondition
  riemannCurvatureDefinedClosed : L.riemannCurvatureDefined
  ricciCurvatureDefinedClosed : L.ricciCurvatureDefined
  scalarCurvatureDefinedClosed : L.scalarCurvatureDefined

def LocalCurvatureInvariantClosed (L : LocalCurvatureInvariantPackage) : Prop :=
  L.metricCompatibility ∧ L.torsionFreeCondition ∧ L.riemannCurvatureDefined ∧ L.ricciCurvatureDefined ∧ L.scalarCurvatureDefined

theorem local_curvature_invariant_closed_from_evidence (L : LocalCurvatureInvariantPackage) (E : LocalCurvatureInvariantEvidence L) :
    LocalCurvatureInvariantClosed L := by
  exact And.intro E.metricCompatibilityClosed
    (And.intro E.torsionFreeConditionClosed
      (And.intro E.riemannCurvatureDefinedClosed
        (And.intro E.ricciCurvatureDefinedClosed E.scalarCurvatureDefinedClosed)))

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse