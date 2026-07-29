import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure GeometricLemmaObject where
  manifold : Type
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  differentialInvariant : Prop
  geometricLemmaStatement : Prop
  conclusion : GeometricLemmaClosed

def GeometricLemmaClosed (O : GeometricLemmaObject) : Prop :=
  O.geometricLemmaStatement

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse
