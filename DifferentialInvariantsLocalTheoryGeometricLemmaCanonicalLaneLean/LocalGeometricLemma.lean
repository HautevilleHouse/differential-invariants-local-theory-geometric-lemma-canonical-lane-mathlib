import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure LocalGeometricLemmaPackage where
  invariantDifferentialSystem : Type u
  localNormalForms : Prop
  equivalenceProblemSolvable : Prop
  localNormalFormsTerm : localNormalForms
  equivalenceProblemSolvableTerm : equivalenceProblemSolvable

structure LocalGeometricLemmaEvidence (L : LocalGeometricLemmaPackage) where
  localNormalFormsClosed : L.localNormalForms
  equivalenceProblemSolvableClosed : L.equivalenceProblemSolvable

def LocalGeometricLemmaClosed (L : LocalGeometricLemmaPackage) : Prop :=
  L.localNormalForms ∧ L.equivalenceProblemSolvable

theorem local_geometric_lemma_closed_from_evidence (L : LocalGeometricLemmaPackage)
    (E : LocalGeometricLemmaEvidence L) : LocalGeometricLemmaClosed L := by
  exact And.intro E.localNormalFormsClosed E.equivalenceProblemSolvableClosed

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse