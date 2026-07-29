import LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CupLengthPackage (A : AdmissibleClass) where
  cohomologyRing : Prop
  cupProductStructure : Prop
  cupLengthBound : Prop
  lowerBoundFromCategoryCover : Prop
  maximalCupLengthComputed : Prop

structure CupLengthEvidence {A : AdmissibleClass} (C : CupLengthPackage A) where
  cohomologyRingClosed : C.cohomologyRing
  cupProductStructureClosed : C.cupProductStructure
  cupLengthBoundClosed : C.cupLengthBound
  lowerBoundFromCategoryCoverClosed : C.lowerBoundFromCategoryCover
  maximalCupLengthComputedClosed : C.maximalCupLengthComputed

def CupLengthClosed {A : AdmissibleClass} (C : CupLengthPackage A) : Prop :=
  C.cohomologyRing ∧ C.cupProductStructure ∧ C.cupLengthBound ∧ C.lowerBoundFromCategoryCover ∧ C.maximalCupLengthComputed

theorem cup_length_closed_from_evidence {A : AdmissibleClass} (C : CupLengthPackage A) (E : CupLengthEvidence C) : CupLengthClosed C := by
  exact And.intro E.cohomologyRingClosed
    (And.intro E.cupProductStructureClosed
      (And.intro E.cupLengthBoundClosed
        (And.intro E.lowerBoundFromCategoryCoverClosed E.maximalCupLengthComputedClosed)))

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse
