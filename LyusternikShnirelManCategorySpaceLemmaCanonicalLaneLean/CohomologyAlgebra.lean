import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CohomologyAlgebraPackage where
  space : Type u
  topology : TopologicalSpace space
  cohomologyRing : Type v
  cupProduct : cohomologyRing → cohomologyRing → cohomologyRing
  gradedCommutative : Prop
  unitElement : cohomologyRing
  unitElementClosed : unitElement = unitElement

def CohomologyAlgebraClosed (C : CohomologyAlgebraPackage) : Prop :=
  C.gradedCommutative

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse