import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure MovingFramePackage {J : JetBundlePackage} (I : InvariantJetPackage J) where
  frameSection : Type u
  normalizationEquations : Prop
  frameInvariant : Prop
  frameSectionDefined : Prop
  normalizationEquationsClosed : normalizationEquations
  frameInvariantClosed : frameInvariant

structure MovingFrameEvidence {J : JetBundlePackage} {I : InvariantJetPackage J} (M : MovingFramePackage I) where
  frameSectionDefinedClosed : M.frameSectionDefined
  normalizationEquationsClosedClosed : M.normalizationEquationsClosed
  frameInvariantClosedClosed : M.frameInvariantClosed

def MovingFrameClosed {J : JetBundlePackage} {I : InvariantJetPackage J} (M : MovingFramePackage I) : Prop :=
  M.frameSectionDefined ∧ M.normalizationEquations ∧ M.frameInvariant

theorem moving_frame_closed_from_evidence {J : JetBundlePackage} {I : InvariantJetPackage J} (M : MovingFramePackage I) (E : MovingFrameEvidence M) : MovingFrameClosed M := by
  exact And.intro E.frameSectionDefinedClosed (And.intro E.normalizationEquationsClosedClosed E.frameInvariantClosedClosed)

structure InvariantDerivativePackage {J : JetBundlePackage} {I : InvariantJetPackage J} (M : MovingFramePackage I) where
  invariantDerivatives : Type u
  recurrenceFormulae : Prop
  syzygyModule : Prop
  invariantDerivativesDefined : Prop
  recurrenceFormulaeClosed : recurrenceFormulae
  syzygyModuleClosed : syzygyModule

structure InvariantDerivativeEvidence {J : JetBundlePackage} {I : InvariantJetPackage J} {M : MovingFramePackage I} (D : InvariantDerivativePackage M) where
  invariantDerivativesDefinedClosed : D.invariantDerivativesDefined
  recurrenceFormulaeClosedClosed : D.recurrenceFormulaeClosed
  syzygyModuleClosedClosed : D.syzygyModuleClosed

def InvariantDerivativeClosed {J : JetBundlePackage} {I : InvariantJetPackage J} {M : MovingFramePackage I} (D : InvariantDerivativePackage M) : Prop :=
  D.invariantDerivativesDefined ∧ D.recurrenceFormulae ∧ D.syzygyModule

theorem invariant_derivative_closed_from_evidence {J : JetBundlePackage} {I : InvariantJetPackage J} {M : MovingFramePackage I} (D : InvariantDerivativePackage M) (E : InvariantDerivativeEvidence D) : InvariantDerivativeClosed D := by
  exact And.intro E.invariantDerivativesDefinedClosed (And.intro E.recurrenceFormulaeClosedClosed E.syzygyModuleClosedClosed)

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse