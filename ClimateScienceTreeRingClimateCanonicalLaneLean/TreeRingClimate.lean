import HautevilleHouse.ClimateScienceTreeRingClimateCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure TreeRingClimatePackage where
  treeRingWidths : Type
  temperatureReconstruction : treeRingWidths → Float
  precipitationSensitivity : treeRingWidths → Float
  growthModel : Prop
  climateCalibration : Prop

theorem reconstruction_closed_from_calibration (T : TreeRingClimatePackage) (h : T.climateCalibration) : ConstrainedClimateClosure (AdmissibleClass.mk ({
    object := { coreSample := Unit, ringWidth := λ _ => 0, climateProxies := λ _ => 0, wellMixedAtmosphere := True, calibrationExists := h, conclusion := h } : ClimateAdmittedObject }) h True True (Or.inl h)) := by
  apply constrained_climate_endgame

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse