import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean

structure IndexTheoremPackage where
  manifoldType : Type u
  ellipticComplexType : Type v
  indexType : Type w
  nullSpaceDimensions : Prop
  defectInvariant : Prop
  cohomologicalFormulation : Prop
  indexComputed : Prop
  applicationToGeometry : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  nullSpaceDimensionsClosed : I.nullSpaceDimensions
  defectInvariantClosed : I.defectInvariant
  cohomologicalFormulationClosed : I.cohomologicalFormulation
  indexComputedClosed : I.indexComputed
  applicationToGeometryClosed : I.applicationToGeometry

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.nullSpaceDimensions ∧ I.defectInvariant ∧ I.cohomologicalFormulation ∧ I.indexComputed ∧ I.applicationToGeometry

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.nullSpaceDimensionsClosed
    (And.intro E.defectInvariantClosed
      (And.intro E.cohomologicalFormulationClosed
        (And.intro E.indexComputedClosed E.applicationToGeometryClosed)))

end DifferentialInvariantsLocalTheoryGeometricLemmaCanonicalLaneLean
end HautevilleHouse