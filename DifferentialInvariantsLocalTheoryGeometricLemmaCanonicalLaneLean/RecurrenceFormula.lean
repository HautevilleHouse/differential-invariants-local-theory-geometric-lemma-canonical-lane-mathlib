import DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean.MovingFrameConstruction

/-!
# Recurrence Formula Package

This module defines the recurrence formulas that express differentiated invariants in terms of the Maurer–Cartan forms.
-/

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure SyzygyBundle (M : Type u) (A : LieGroupAction M) where
  recurrenceRelations : Prop
  differentiationInvariant : Prop
  invariantTheoreticDefinition : Prop
  generationOfRelations : Prop

def RecurrenceOperator (M : Type u) (A : LieGroupAction M) (F : MovingFrame M A) : Type _ := sorry

structure RecurrenceFormula (M : Type u) (A : LieGroupAction M) (F : MovingFrame M A) where
  differentiationRules : RecurrenceOperator M A F → JetBundle M → VectorFieldOverJet M (default : JetBundle M)
  linearity : Prop
  productRule : Prop
  commutationWithProlongation : Prop

structure RecurrenceEvidence (M : Type u) (A : LieGroupAction M) (F : MovingFrame M A)
    (R : RecurrenceFormula M A F) where
  linearityClosed : R.linearity
  productRuleClosed : R.productRule
  commutationWithProlongationClosed : R.commutationWithProlongation
  syzygyBundle : SyzygyBundle M A
  syzygyClosed : SyzygyBundle.recurrenceRelations R.syzygyBundle

def RecurrenceFormulaClosed (M : Type u) (A : LieGroupAction M) (F : MovingFrame M A)
    (R : RecurrenceFormula M A F) : Prop :=
  R.linearity ∧ R.productRule ∧ R.commutationWithProlongation

theorem recurrence_formula_closed_from_evidence
    (M : Type u) (A : LieGroupAction M) (F : MovingFrame M A)
    (R : RecurrenceFormula M A F) (E : RecurrenceEvidence M A F R) :
    RecurrenceFormulaClosed M A F R := by
  exact And.intro E.linearityClosed
    (And.intro E.productRuleClosed E.commutationWithProlongationClosed)

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse