import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure HolonomyPackage where
  manifoldType : Type u
  connectionType : Type v
  holonomyGroupType : Type w
  holonomyAlgebroidType : Type x
  looptraces : Prop
  invariantsFromHolonomy : Prop
  localHolonomyTheorem : Prop
  holonomyReduction : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  looptracesClosed : H.looptraces
  invariantsFromHolonomyClosed : H.invariantsFromHolonomy
  localHolonomyTheoremClosed : H.localHolonomyTheorem
  holonomyReductionClosed : H.holonomyReduction

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.looptraces ∧ H.invariantsFromHolonomy ∧ H.localHolonomyTheorem ∧ H.holonomyReduction

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.looptracesClosed
    (And.intro E.invariantsFromHolonomyClosed
      (And.intro E.localHolonomyTheoremClosed E.holonomyReductionClosed))

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse