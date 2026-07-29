import HautevilleHouse.ClimateScienceTreeRingClimateCanonicalLaneLean.TreeRingClimate

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure MilankovitchCycleEvidence where
  orbitalEccentricity : Float
  axialObliquity : Float
  precessionIndex : Float
  insolationForcing : Float
  cycleDetectedInRingSeries : Prop

theorem milankovitch_evidence_closes_admissible (M : MilankovitchCycleEvidence) (h : M.cycleDetectedInRingSeries) : ConstrainedClimateClosure (AdmissibleClass.mk ({
    object := { coreSample := Unit, ringWidth := λ _ => 0, climateProxies := λ _ => 0, wellMixedAtmosphere := True, calibrationExists := h, conclusion := h } : ClimateAdmittedObject }) h True True (Or.inl h)) := by
  apply constrained_climate_endgame

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse