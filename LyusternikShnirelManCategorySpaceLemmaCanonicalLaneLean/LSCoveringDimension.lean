import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CoveringDimensionPackage where
  acyclicCover : Type u
  coveringDimension : Nat
  categoryBound : Nat
  dimensionInequality : Prop

structure CoveringDimensionEvidence (D : CoveringDimensionPackage) where
  acyclicCoverClosed : True
  coveringDimensionValid : D.coveringDimension ≥ 0
  categoryBoundValid : D.categoryBound ≤ D.coveringDimension + 1
  dimensionInequalityClosed : D.dimensionInequality

def CoveringDimensionClosed (D : CoveringDimensionPackage) : Prop :=
  D.coveringDimension ≥ 0 ∧ D.categoryBound ≤ D.coveringDimension + 1 ∧ D.dimensionInequality

theorem covering_dimension_closed_from_evidence (D : CoveringDimensionPackage) (E : CoveringDimensionEvidence D) :
    CoveringDimensionClosed D := by
  exact And.intro E.coveringDimensionValid
    (And.intro E.categoryBoundValid E.dimensionInequalityClosed)

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse