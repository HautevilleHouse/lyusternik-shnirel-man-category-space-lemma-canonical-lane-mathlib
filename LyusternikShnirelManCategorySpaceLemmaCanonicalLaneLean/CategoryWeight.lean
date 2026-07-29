import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CategoryWeightPackage where
  objectType : Type u
  morphismSet : objectType -> objectType -> Type v
  compositionLaw : Prop
  identityMorphism : Prop
  weightFunction : Type w
  lowerBoundPreserved : Prop

structure CategoryWeightEvidence (W : CategoryWeightPackage) where
  compositionLawClosed : W.compositionLaw
  identityMorphismClosed : W.identityMorphism
  lowerBoundPreservedClosed : W.lowerBoundPreserved

def CategoryWeightClosed (W : CategoryWeightPackage) : Prop :=
  W.compositionLaw ∧ W.identityMorphism ∧ W.lowerBoundPreserved

theorem category_weight_closed_from_evidence (W : CategoryWeightPackage)
    (E : CategoryWeightEvidence W) : CategoryWeightClosed W := by
  exact And.intro E.compositionLawClosed
    (And.intro E.identityMorphismClosed E.lowerBoundPreservedClosed)

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse