import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure MorseTheoryPackage where
  criticalPointExists : Prop
  morseIndexDefined : Prop
  gradientFlowConstructed : Prop
  levelSetTopology : Prop

structure MorseTheoryEvidence (M : MorseTheoryPackage) where
  criticalPointExistsClosed : M.criticalPointExists
  morseIndexDefinedClosed : M.morseIndexDefined
  gradientFlowConstructedClosed : M.gradientFlowConstructed
  levelSetTopologyClosed : M.levelSetTopology

def MorseTheoryClosed (M : MorseTheoryPackage) : Prop :=
  M.criticalPointExists ∧ M.morseIndexDefined ∧ M.gradientFlowConstructed ∧ M.levelSetTopology

theorem morse_theory_closed_from_evidence (M : MorseTheoryPackage) (E : MorseTheoryEvidence M) :
    MorseTheoryClosed M := by
  exact And.intro E.criticalPointExistsClosed
    (And.intro E.morseIndexDefinedClosed
      (And.intro E.gradientFlowConstructedClosed E.levelSetTopologyClosed))

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse