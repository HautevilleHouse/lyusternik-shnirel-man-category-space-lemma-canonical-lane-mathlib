import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CupLengthLowerBoundPackage where
  space : Type u
  topology : TopologicalSpace space
  cohomologyRing : Type v
  cupLength : ℕ
  lowerBoundGiven : Prop

def CupLengthLowerBoundClosed (C : CupLengthLowerBoundPackage) : Prop :=
  C.lowerBoundGiven

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse