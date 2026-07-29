import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LyusternikShnirelmanSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  cohomologyRingAvailable : Prop
  cupLengthDefined : Prop

structure LyusternikShnirelmanAdmittedObject where
  space : LyusternikShnirelmanSpace
  topologicalManifold : Prop
  categoricalCupLength : Nat
  conclusion : topologicalManifold → categoricalCupLength ≥ 1

structure LyusternikShnirelmanEndgameState where
  object : LyusternikShnirelmanAdmittedObject

def LyusternikShnirelmanWitnessClosed (O : LyusternikShnirelmanAdmittedObject) : Prop :=
  O.topologicalManifold → O.categoricalCupLength ≥ 1

end LyusternikShnirelManCategorySpaceLemmaCanonicalLaneLean
end HautevilleHouse
