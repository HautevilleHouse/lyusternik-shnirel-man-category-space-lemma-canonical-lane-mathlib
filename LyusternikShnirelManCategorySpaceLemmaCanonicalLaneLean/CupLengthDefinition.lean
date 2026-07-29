import canonicalLaneMathlib.AdmissibleClass

/-!
# Cup Length Definition

Defines the cup length of a topological space using cohomology products.
-/

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CupLengthPackage where
  space : Type u
  cohomologyRing : Type v
  cupProduct : cohomologyRing → cohomologyRing → cohomologyRing
  nilpotentIndex : Nat
  allProductsVanishing : Prop
  cupLengthDefined : Prop

def cupLength (C : CupLengthPackage) : Prop :=
  C.cupLengthDefined

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse
