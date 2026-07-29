import DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def differentialInvariantProjection : @Projection DifferentialInvariantEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem differential_invariant_projection_idempotent (x : DifferentialInvariantEndgameState) :
    differentialInvariantProjection.toFun (differentialInvariantProjection.toFun x) = differentialInvariantProjection.toFun x := by
  exact differentialInvariantProjection.idempotent x

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse