import ClimateScienceTreeRingClimateCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TreeRingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TreeRingAdmittedObject where
  space : TreeRingSpace
  ringWidthData : Prop
  calibrationCurve : Prop
  paleoclimateReconstruction : Prop
  proot : Type
  prootTopology : TopologicalSpace proot
  reconstructionValidated : Prop
  conclusion : reconstructionValidated

structure TreeRingEndgameState where
  object : TreeRingAdmittedObject

def TreeRingWitnessClosed (O : TreeRingAdmittedObject) : Prop :=
  O.reconstructionValidated

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse