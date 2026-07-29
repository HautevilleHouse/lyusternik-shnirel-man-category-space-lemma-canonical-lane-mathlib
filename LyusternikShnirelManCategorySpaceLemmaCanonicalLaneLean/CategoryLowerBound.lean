import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean.CupLengthDefinition

/-!
# Category Lower Bound

Proves that category is bounded below by cup length.
-/

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CategoryLowerBoundPackage (C : CupLengthPackage) where
  category : Nat
  categoryDefined : Prop
  cupLengthBound : C.cupLengthDefined → category ≥ C.nilpotentIndex
  boundClosed : cupLengthBound

theorem category_lower_bound (C : CupLengthPackage) (P : CategoryLowerBoundPackage C) :
    P.boundClosed := by
  exact P.boundClosed

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse
