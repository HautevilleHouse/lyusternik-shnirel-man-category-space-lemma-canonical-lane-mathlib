import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CupProductPackage where
  cohomologyClasses : Type u
  cupProductPair : Prop
  nontrivialCupProduct : Prop
  categoryLowerBound : Prop

structure CupProductEvidence (C : CupProductPackage) where
  cupProductPairClosed : C.cupProductPair
  nontrivialCupProductClosed : C.nontrivialCupProduct
  categoryLowerBoundClosed : C.categoryLowerBound

def CupProductClosed (C : CupProductPackage) : Prop :=
  C.cupProductPair ∧ C.nontrivialCupProduct ∧ C.categoryLowerBound

theorem cup_product_closed_from_evidence (C : CupProductPackage) (E : CupProductEvidence C) :
    CupProductClosed C := by
  exact And.intro E.cupProductPairClosed
    (And.intro E.nontrivialCupProductClosed E.categoryLowerBoundClosed)

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse