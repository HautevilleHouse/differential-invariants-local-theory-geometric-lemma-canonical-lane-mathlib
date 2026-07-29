import DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean.DifferentialInvariantBundles

/-!
# Moving Frame Construction Package

This module defines the moving frame method for constructing differential invariants.
-/

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure LieGroupAction (M : Type u) where
  group : Type v
  actionMap : group → M → M
  smoothAction : Prop
  effectiveAction : Prop
  principalBundles : Prop

def InfinitesimalGenerator (M : Type u) (A : LieGroupAction M) : Type _ :=
  A.group → VectorFieldOverJet M (default : JetBundle M)

structure MaurerCartanForm (M : Type u) (A : LieGroupAction M) where
  li algebraValued : Type w
  smoothness : Prop
  equivariance : Prop
  structureEquations : Prop
  solderingForm : Prop

structure MovingFrame (M : Type u) (A : LieGroupAction M) where
  crossSection : JetBundle M → A.group
  smoothCrossSection : Prop
  invarianceProperty : Prop
  inducedInvariants : DifferentialInvariantBundle M (default : JetBundle M)

structure MovingFrameEvidence (M : Type u) (A : LieGroupAction M)
    (F : MovingFrame M A) where
  smoothCrossSectionClosed : F.smoothCrossSection
  invariancePropertyClosed : F.invarianceProperty
  inducedInvariantsClosed : DifferentialInvariantBundlesClosed M (default : JetBundle M) F.inducedInvariants

structure MovingFrameConstructed (M : Type u) (A : LieGroupAction M) : Prop where
  frame : MovingFrame M A
  evidence : MovingFrameEvidence M A frame

def MovingFrameConstructionClosed (M : Type u) (A : LieGroupAction M)
    (F : MovingFrame M A) : Prop :=
  F.smoothCrossSection ∧ F.invarianceProperty ∧
  DifferentialInvariantBundlesClosed M (default : JetBundle M) F.inducedInvariants

theorem moving_frame_construction_closed_from_evidence
    (M : Type u) (A : LieGroupAction M) (F : MovingFrame M A)
    (E : MovingFrameEvidence M A F) : MovingFrameConstructionClosed M A F := by
  exact And.intro E.smoothCrossSectionClosed
    (And.intro E.invariancePropertyClosed E.inducedInvariantsClosed)

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse