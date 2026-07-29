import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure CurvatureInvariantPackage where
  riemannCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  invariantDerived : Prop

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.riemannCurvature ∧ C.ricciCurvature ∧ C.scalarCurvature ∧ C.invariantDerived

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse
