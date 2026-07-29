import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure LusternikSchnirelmannCategoryPackage where
  space : Type u
  topology : TopologicalSpace space
  categoryNumber : ℕ
  coveringDimension : ℕ
  inequalityHolds : Prop

def LusternikSchnirelmannCategoryClosed (L : LusternikSchnirelmannCategoryPackage) : Prop :=
  L.inequalityHolds

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse