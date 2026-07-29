import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure IsotopicRatio where
  numerator : Float
  denominator : Float
  deltaValue : Float

thermometricRelationship (T : Float) (δ : Float) : Prop :=
  δ = 1000 * ( (T - 273.15) * 0.2 - 2.0 )

structure TemperatureReconstruction where
  delta18OSediment : Float
  delta18OCarbonate : Float
  reconstructedTemperature : Float
  consistency : thermometricRelationship reconstructedTemperature delta18OSediment

structure IsotopicEvidence (r : TemperatureReconstruction) where
  deltaConsistent : r.delta18OSediment < r.delta18OCarbonate
  temperaturePositive : r.reconstructedTemperature > 250.0

structure IsotopicPaleothermometryClosed (r : TemperatureReconstruction) : Prop :=
  r.delta18OSediment < r.delta18OCarbonate ∧ r.reconstructedTemperature > 250.0

theorem isotopic_paleothermometry_evidence_closed (r : TemperatureReconstruction) (E : IsotopicEvidence r) :
    IsotopicPaleothermometryClosed r := by
  exact And.intro E.deltaConsistent E.temperaturePositive

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse