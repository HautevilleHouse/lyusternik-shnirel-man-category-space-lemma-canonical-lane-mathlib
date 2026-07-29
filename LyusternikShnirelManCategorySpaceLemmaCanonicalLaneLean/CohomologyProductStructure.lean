import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

structure CohomologyProductStructurePackage where
  space : Type u
  topology : TopologicalSpace space
  cohomologyRing : Type v
  multiplicationIsCupProduct : Prop
  associativity : Prop
  commutativity : Prop

def CohomologyProductStructureClosed (C : CohomologyProductStructurePackage) : Prop :=
  C.associativity ∧ C.commutativity

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse