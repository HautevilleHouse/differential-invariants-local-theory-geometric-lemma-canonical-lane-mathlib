import DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DifferentialInvariantSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferentialInvariantAdmittedObject where
  space : DifferentialInvariantSpace
  closedManifold : Prop
  lieGroupActionExists : Prop
  movingFrameExists : Prop
  conclusion : movingFrameExists

structure DifferentialInvariantEndgameState where
  object : DifferentialInvariantAdmittedObject

def DifferentialInvariantWitnessClosed (O : DifferentialInvariantAdmittedObject) : Prop :=
  O.movingFrameExists

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse