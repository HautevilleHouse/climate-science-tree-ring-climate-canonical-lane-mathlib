import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure PaleoclimateProxyRecord where
  archiveType : String
  datingMethod : String
  measurementResolution : Nat
  signalToNoiseRatio : Float
  calibratedAgeRange : (Nat × Nat)

structure IsotopicFractionationModel where
  speciesFactor : Float
  temperatureSensitivity : Float
  humidityCorrection : Float
  altitudeGradient : Float

structure PaleoclimateProxyEvidence (R : PaleoclimateProxyRecord) (M : IsotopicFractionationModel) where
  archiveClosed : R.datingMethod ≠ ""
  fractionationCorrected : M.temperatureSensitivity > 0.0

structure PaleoclimateProxyEvidenceClosed (R : PaleoclimateProxyRecord) (M : IsotopicFractionationModel) : Prop :=
  R.datingMethod ≠ "" ∧ M.temperatureSensitivity > 0.0

theorem paleoclimate_proxy_evidence_closed (R : PaleoclimateProxyRecord) (M : IsotopicFractionationModel) (E : PaleoclimateProxyEvidence R M) :
    PaleoclimateProxyEvidenceClosed R M := by
  exact And.intro E.archiveClosed E.fractionationCorrected

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse