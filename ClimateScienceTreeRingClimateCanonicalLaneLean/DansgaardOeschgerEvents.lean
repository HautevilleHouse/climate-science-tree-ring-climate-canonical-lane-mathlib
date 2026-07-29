import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  temperatureAnomaly : ℝ
  duration : ℝ
  amplitude : ℝ
  period : ℝ
  iceCoreDepth : ℝ

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  temperatureAnomalyClosed : D.temperatureAnomaly = 8
  durationClosed : D.duration = 1500
  amplitudeClosed : D.amplitude = 10
  periodClosed : D.period = 1470
  iceCoreDepthClosed : D.iceCoreDepth = 2000

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.temperatureAnomaly = 8 ∧ D.duration = 1500 ∧ D.amplitude = 10 ∧ D.period = 1470 ∧ D.iceCoreDepth = 2000

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEventsPackage) (Ev : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro Ev.temperatureAnomalyClosed (And.intro Ev.durationClosed (And.intro Ev.amplitudeClosed (And.intro Ev.periodClosed Ev.iceCoreDepthClosed)))

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse