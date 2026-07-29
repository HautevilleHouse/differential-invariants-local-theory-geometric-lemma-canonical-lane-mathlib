import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure ConnectionTheoryPackage where
  vectorBundleType : Type u
  connectionType : Type v
  holonomyGroup : Type w
  parallelTransport : Prop
  curvatureTransformation : Prop
  localHolonomyTheorem : Prop
  holonomyLieAlgebroid : Prop

structure ConnectionTheoryEvidence (C : ConnectionTheoryPackage) where
  parallelTransportClosed : C.parallelTransport
  curvatureTransformationClosed : C.curvatureTransformation
  localHolonomyTheoremClosed : C.localHolonomyTheorem
  holonomyLieAlgebroidClosed : C.holonomyLieAlgebroid

def ConnectionTheoryClosed (C : ConnectionTheoryPackage) : Prop :=
  C.parallelTransport ∧ C.curvatureTransformation ∧ C.localHolonomyTheorem ∧ C.holonomyLieAlgebroid

theorem connection_theory_closed_from_evidence (C : ConnectionTheoryPackage) (E : ConnectionTheoryEvidence C) :
    ConnectionTheoryClosed C := by
  exact And.intro E.parallelTransportClosed
    (And.intro E.curvatureTransformationClosed
      (And.intro E.localHolonomyTheoremClosed E.holonomyLieAlgebroidClosed))

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse