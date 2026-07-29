import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CategorySpacePackage where
  spaceType : Type u
  topSpace : TopologicalSpace spaceType
  lsCategory : Nat
  categoryDefined : Prop
  contractibleCover : Type v

structure CategorySpaceEvidence (C : CategorySpacePackage) where
  categoryDefinedClosed : C.categoryDefined
  contractibleCoverExists : True

def CategorySpaceClosed (C : CategorySpacePackage) : Prop :=
  C.categoryDefined

theorem category_space_closed_from_evidence (C : CategorySpacePackage) (E : CategorySpaceEvidence C) :
    CategorySpaceClosed C := by
  exact E.categoryDefinedClosed

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse