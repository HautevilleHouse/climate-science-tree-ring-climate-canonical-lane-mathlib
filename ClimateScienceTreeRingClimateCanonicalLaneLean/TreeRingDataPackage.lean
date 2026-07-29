import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure TreeRingSample where
  site : String
  year : Nat
  ringWidth : Float
  density : Float
  isotopicRatio : Float

treeRingSampleAdmitted : AdmissibleClass := {
  object := {},
  endpointSatisfied := True,
  remainderRecorded := True,
  gateWitness := Or.inl True.intro
}

structure TreeRingDataPackage where
  samples : List TreeRingSample
  siteName : String
  latitude : Float
  longitude : Float
  elevation : Float
  dataPackageClosed : Prop

def TreeRingDataClosed (P : TreeRingDataPackage) : Prop :=
  P.dataPackageClosed

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse