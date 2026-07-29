import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure JetBundlePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  fiberRank : Nat
  jetSpace : Type v
  sections : Type w
  smoothSectionsDefined : Prop

structure JetBundleEvidence (J : JetBundlePackage) where
  smoothStructureClosed : J.smoothStructure
  smoothSectionsDefinedClosed : J.smoothSectionsDefined

def JetBundleClosed (J : JetBundlePackage) : Prop :=
  J.smoothStructure ∧ J.smoothSectionsDefined

theorem jet_bundle_closed_from_evidence (J : JetBundlePackage) (E : JetBundleEvidence J) : JetBundleClosed J := by
  exact And.intro E.smoothStructureClosed E.smoothSectionsDefinedClosed

structure InvariantJetPackage (J : JetBundlePackage) where
  groupAction : Type u
  invariantFunctions : Type v
  differentialInvariants : Type w
  invariantFunctionsDefined : Prop
  differentialInvariantsDefined : Prop
  generatingSet : Prop

structure InvariantJetEvidence {J : JetBundlePackage} (I : InvariantJetPackage J) where
  invariantFunctionsDefinedClosed : I.invariantFunctionsDefined
  differentialInvariantsDefinedClosed : I.differentialInvariantsDefined
  generatingSetClosed : I.generatingSet

def InvariantJetClosed {J : JetBundlePackage} (I : InvariantJetPackage J) : Prop :=
  I.invariantFunctionsDefined ∧ I.differentialInvariantsDefined ∧ I.generatingSet

theorem invariant_jet_closed_from_evidence {J : JetBundlePackage} (I : InvariantJetPackage J) (E : InvariantJetEvidence I) : InvariantJetClosed I := by
  exact And.intro E.invariantFunctionsDefinedClosed (And.intro E.differentialInvariantsDefinedClosed E.generatingSetClosed)

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse