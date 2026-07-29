import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure LusternikSchnirelmannCategoryClosurePackage where
  space : Type u
  categoryNumber : ℕ
  lowerBoundEstablished : Prop
  upperBoundEstablished : Prop
  coveringDimensionLifted : Prop

structure LusternikSchnirelmannCategoryClosureEvidence
    (C : LusternikSchnirelmannCategoryClosurePackage) where
  lowerBoundEstablishedClosed : C.lowerBoundEstablished
  upperBoundEstablishedClosed : C.upperBoundEstablished
  coveringDimensionLiftedClosed : C.coveringDimensionLifted

def LusternikSchnirelmannCategoryClosureClosed
    (C : LusternikSchnirelmannCategoryClosurePackage) : Prop :=
  C.lowerBoundEstablished ∧ C.upperBoundEstablished ∧ C.coveringDimensionLifted

theorem lusternik_schnirelmann_category_closure_closed_from_evidence
    (C : LusternikSchnirelmannCategoryClosurePackage)
    (E : LusternikSchnirelmannCategoryClosureEvidence C) :
    LusternikSchnirelmannCategoryClosureClosed C := by
  exact And.intro E.lowerBoundEstablishedClosed
    (And.intro E.upperBoundEstablishedClosed E.coveringDimensionLiftedClosed)

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse