import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure IsotopicPaleothermometry where
  deltaD : Float
  deltaO18 : Float
  temperatureAnomaly : Float
  fractionationFactor : Float

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def IsotopicAdmissible : AdmissibleClass := {
  object := {},
  endpointSatisfied := True,
  remainderRecorded := True,
  gateWitness := Or.inl True.intro
}

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse