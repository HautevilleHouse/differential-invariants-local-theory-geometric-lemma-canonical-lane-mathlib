import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure DeRhamComplexPackage (M : Type u) where
  exteriorDerivative : (M → Type v) → (M → Type v)
  wedgeProduct : (M → Type v) → (M → Type v) → (M → Type v)
  poincareLemma : Prop
  closedExactRelationship : Prop
  cohomologyGroups : Prop

structure DeRhamComplexEvidence {M : Type u} (D : DeRhamComplexPackage M) where
  poincareLemmaClosed : D.poincareLemma
  closedExactRelationshipClosed : D.closedExactRelationship
  cohomologyGroupsClosed : D.cohomologyGroups

def DeRhamComplexClosed {M : Type u} (D : DeRhamComplexPackage M) : Prop :=
  D.poincareLemma ∧ D.closedExactRelationship ∧ D.cohomologyGroups

theorem de_rham_complex_closed_from_evidence {M : Type u} (D : DeRhamComplexPackage M) (E : DeRhamComplexEvidence D) : DeRhamComplexClosed D := by
  exact And.intro E.poincareLemmaClosed (And.intro E.closedExactRelationshipClosed E.cohomologyGroupsClosed)

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse