import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.remainderRecorded

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse