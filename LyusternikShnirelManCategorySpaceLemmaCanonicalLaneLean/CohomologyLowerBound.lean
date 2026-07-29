import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CohomologyLowerBoundPackage where
  space : Type u
  cohomologyRing : Type v
  cupLength : ℕ
  categoryBound : ℕ
  cupLengthLessOrEqualCategory : Prop

structure CohomologyLowerBoundEvidence (C : CohomologyLowerBoundPackage) where
  cupLengthLessOrEqualCategoryClosed : C.cupLengthLessOrEqualCategory

def CohomologyLowerBoundClosed (C : CohomologyLowerBoundPackage) : Prop :=
  C.cupLengthLessOrEqualCategory

theorem cohomology_lower_bound_closed_from_evidence
    (C : CohomologyLowerBoundPackage)
    (E : CohomologyLowerBoundEvidence C) :
    CohomologyLowerBoundClosed C := by
  exact E.cupLengthLessOrEqualCategoryClosed

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse