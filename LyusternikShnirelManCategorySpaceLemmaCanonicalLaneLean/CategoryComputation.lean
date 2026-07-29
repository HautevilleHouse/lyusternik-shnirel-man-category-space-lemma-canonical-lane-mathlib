import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure LusternikSchnirelmannCategoryObject where
  space : Type u
  topology : TopologicalSpace space
  categoryNumber : ℕ
  coveringByContractibleSets : Prop
  categoryBound : Prop

def LusternikSchnirelmannCategoryClosed (A : LusternikSchnirelmannCategoryObject) : Prop :=
  A.coveringByContractibleSets ∧ A.categoryBound

theorem lusternik_schnirelmann_category_closed_from_properties
    (A : LusternikSchnirelmannCategoryObject) (hCovering : A.coveringByContractibleSets) (hBound : A.categoryBound) :
    LusternikSchnirelmannCategoryClosed A := by
  exact And.intro hCovering hBound

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse