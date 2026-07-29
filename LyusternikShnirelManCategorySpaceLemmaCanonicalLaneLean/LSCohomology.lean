import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CohomologyRingPackage where
  cohomologyRing : Type u
  cupProductDefined : Prop
  fundamentalClass : Prop
  categoryLowerBound : Prop

structure CohomologyRingEvidence (C : CohomologyRingPackage) where
  cohomologyRingDefined : True
  cupProductClosed : C.cupProductDefined
  fundamentalClassClosed : C.fundamentalClass
  categoryLowerBoundClosed : C.categoryLowerBound

def CohomologyRingClosed (C : CohomologyRingPackage) : Prop :=
  C.cupProductDefined ∧ C.fundamentalClass ∧ C.categoryLowerBound

theorem cohomology_ring_closed_from_evidence (C : CohomologyRingPackage) (E : CohomologyRingEvidence C) :
    CohomologyRingClosed C := by
  exact And.intro E.cupProductClosed
    (And.intro E.fundamentalClassClosed E.categoryLowerBoundClosed)

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse