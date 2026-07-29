import canonicalLaneMathlib.AdmissibleClass
import LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean.BridgeLemmas
import LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

def ConstrainedLusternikShnirelmanClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lusternik_shnirelman_endgame (A : AdmissibleClass) :
    ConstrainedLusternikShnirelmanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse