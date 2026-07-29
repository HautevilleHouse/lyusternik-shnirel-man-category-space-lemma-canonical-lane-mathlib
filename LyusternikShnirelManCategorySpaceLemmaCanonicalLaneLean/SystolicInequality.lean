import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure SystolicInequalityObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  systolePositive : Prop
  volumeBounded : Prop
  systolicRatioBound : Prop

def SystolicInequalityClosed (A : SystolicInequalityObject) : Prop :=
  A.systolePositive ∧ A.volumeBounded ∧ A.systolicRatioBound

theorem systolic_inequality_closed_from_properties
    (A : SystolicInequalityObject) (hSystole : A.systolePositive) (hVolume : A.volumeBounded) (hRatio : A.systolicRatioBound) :
    SystolicInequalityClosed A := by
  exact And.intro hSystole (And.intro hVolume hRatio)

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse