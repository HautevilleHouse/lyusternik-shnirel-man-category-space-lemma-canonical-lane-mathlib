import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CoveringDimensionPackage where
  space : Type u
  topology : TopologicalSpace space
  coveringDimension : ℕ
  existsOpenCover : Prop
  minimalCardinality : ℕ

def CoveringDimensionClosed (C : CoveringDimensionPackage) : Prop :=
  C.existsOpenCover ∧ (C.coveringDimension = C.minimalCardinality - 1)

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse