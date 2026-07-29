import DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Differential Invariant Bundles Package

This module defines the bundle structures for differential invariants in local geometry.
-/

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure JetBundle (M : Type u) where
  base : M
  fiberType : Type v
  smoothStructure : Prop
  localTrivialization : Prop
  fiberRank : Nat

def VectorFieldOverJet (M : Type u) (J : JetBundle M) : Type _ := by
  -- Placeholder: define as the type of smooth sections of the vertical tangent bundle of J
  exact (J : Type u) → JetBundle M

structure ContactStructure (M : Type u) (J : JetBundle M) where
  canonicalForm : Prop
  integrability : Prop
  contactCodimension : Nat

structure ProlongationBundle (M : Type u) (J : JetBundle M) where
  pdf : J → JetBundle M
  prolongationRank : Nat
  holonomicSubset : Prop
  transversalToCauchy : Prop

structure DifferentialInvariantBundle (M : Type u) (J : JetBundle M) where
  invariantSection : ℕ → Type v
  equivarianceGroup : Type w
  invariantEvaluation : Prop
  localBasis : Prop

structure DifferentialInvariantBundlesEvidence (M : Type u) (J : JetBundle M)
    (D : DifferentialInvariantBundle M J) where
  invariantSectionClosed : D.invariantSection 0
  equivarianceGroupClosed : Nonempty D.equivarianceGroup
  invariantEvaluationClosed : D.invariantEvaluation
  localBasisClosed : D.localBasis

def DifferentialInvariantBundlesClosed (M : Type u) (J : JetBundle M)
    (D : DifferentialInvariantBundle M J) : Prop :=
  D.invariantSection 0 ∧ Nonempty D.equivarianceGroup ∧ D.invariantEvaluation ∧ D.localBasis

theorem differential_invariant_bundles_closed_from_evidence
    (M : Type u) (J : JetBundle M) (D : DifferentialInvariantBundle M J)
    (E : DifferentialInvariantBundlesEvidence M J D) :
    DifferentialInvariantBundlesClosed M J D := by
  rcases E with ⟨hInv, hNonempty, hEval, hBasis⟩
  exact ⟨hInv, hNonempty, hEval, hBasis⟩

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse