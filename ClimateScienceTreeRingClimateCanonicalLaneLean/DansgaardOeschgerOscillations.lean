import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure IceCoreRecord where
  depthInterval : (Nat × Nat)
  delta18O : List Float
  dustConcentration : List Float

structure DOEvent where
  onsetYear : Int
  duration : Nat
  amplitude : Float
  abruptWarming : amplitude > 2.0

structure DOEvidence (r : IceCoreRecord) (d : DOEvent) where
  delta18OThreshold : ∃ v : r.delta18O, v > d.amplitude
  abruptClosure : d.abruptWarming

structure DOEventClosed (r : IceCoreRecord) (d : DOEvent) : Prop :=
  (∃ v : r.delta18O, v > d.amplitude) ∧ d.abruptWarming

theorem do_event_evidence_closed (r : IceCoreRecord) (d : DOEvent) (E : DOEvidence r d) :
    DOEventClosed r d := by
  exact And.intro E.delta18OThreshold E.abruptClosure

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse