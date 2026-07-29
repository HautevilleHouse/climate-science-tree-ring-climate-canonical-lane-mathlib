import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure TreeRingClimateProxyPackage where
  ringWidth : ℝ
  density : ℝ
  temperatureSignal : ℝ
  precipitationSignal : ℝ
  growthModel : ℝ

structure TreeRingClimateProxyEvidence (T : TreeRingClimateProxyPackage) where
  ringWidthClosed : T.ringWidth = 0.5
  densityClosed : T.density = 0.8
  temperatureSignalClosed : T.temperatureSignal = 0.2
  precipitationSignalClosed : T.precipitationSignal = 0.3
  growthModelClosed : T.growthModel = 0.1

def TreeRingClimateProxyClosed (T : TreeRingClimateProxyPackage) : Prop :=
  T.ringWidth = 0.5 ∧ T.density = 0.8 ∧ T.temperatureSignal = 0.2 ∧ T.precipitationSignal = 0.3 ∧ T.growthModel = 0.1

theorem tree_ring_climate_proxy_closed_from_evidence (T : TreeRingClimateProxyPackage) (Ev : TreeRingClimateProxyEvidence T) : TreeRingClimateProxyClosed T := by
  exact And.intro Ev.ringWidthClosed (And.intro Ev.densityClosed (And.intro Ev.temperatureSignalClosed (And.intro Ev.precipitationSignalClosed Ev.growthModelClosed)))

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse