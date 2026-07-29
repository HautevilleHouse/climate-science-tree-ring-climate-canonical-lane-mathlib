import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure MilankovitchOrbitalParameters where
  eccentricity : Float
  obliquity : Float
  precessionIndex : Float
  insolationAnomaly : Float

structure InsolationModel (M : MilankovitchOrbitalParameters) where
  latitude : Float
  seasonalTiming : String
  insolationComputed : M.insolationAnomaly > 0.0

structure MilankovitchCycleEvidence (M : MilankovitchOrbitalParameters) (I : InsolationModel M) where
  eccentricityBounded : M.eccentricity > 0.0 ∧ M.eccentricity < 0.1
  obliquityConstrained : M.obliquity > M.precessionIndex

structure MilankovitchCycleEvidenceClosed (M : MilankovitchOrbitalParameters) (I : InsolationModel M) : Prop :=
  (M.eccentricity > 0.0 ∧ M.eccentricity < 0.1) ∧ M.obliquity > M.precessionIndex

theorem milankovitch_cycle_evidence_closed (M : MilankovitchOrbitalParameters) (I : InsolationModel M) (E : MilankovitchCycleEvidence M I) :
    MilankovitchCycleEvidenceClosed M I := by
  exact And.intro E.eccentricityBounded E.obliquityConstrained

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse