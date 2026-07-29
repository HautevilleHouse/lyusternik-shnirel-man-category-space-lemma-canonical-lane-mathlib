import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CriticalPointEstimateObject where
  functionType : Type u
  domain : Type v
  topology : TopologicalSpace domain
  criticalPointsAtLeast : ℕ
  categoryLowerBound : ℕ
  estimateHolds : Prop

def CriticalPointEstimateClosed (A : CriticalPointEstimateObject) : Prop :=
  A.criticalPointsAtLeast ≥ A.categoryLowerBound ∧ A.estimateHolds

theorem critical_point_estimate_closed_from_properties
    (A : CriticalPointEstimateObject) (hCount : A.criticalPointsAtLeast ≥ A.categoryLowerBound) (hEstimate : A.estimateHolds) :
    CriticalPointEstimateClosed A := by
  exact And.intro hCount hEstimate

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse