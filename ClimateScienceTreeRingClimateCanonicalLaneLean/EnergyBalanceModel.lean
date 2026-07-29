import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure EnergyBalanceParameters where
  solarConstant : Float
  albedo : Float
  emissivity : Float
  greenhouseForcing : Float

structure RadiativeEquilibrium (p : EnergyBalanceParameters) where
  incomingShortwave : p.solarConstant * (1 - p.albedo)
  outgoingLongwave : p.emissivity * 5.67e-8 * 288^4
  equilibriumCondition : incomingShortwave = outgoingLongwave

structure EnergyBalanceEvidence (p : EnergyBalanceParameters) (e : RadiativeEquilibrium p) where
  albedoBounded : p.albedo > 0.0 ∧ p.albedo < 1.0
  emissivityBounded : p.emissivity > 0.0 ∧ p.emissivity ≤ 1.0
  equilibriumClosed : e.equilibriumCondition

structure EnergyBalanceClosed (p : EnergyBalanceParameters) (e : RadiativeEquilibrium p) : Prop :=
  (p.albedo > 0.0 ∧ p.albedo < 1.0) ∧ (p.emissivity > 0.0 ∧ p.emissivity ≤ 1.0) ∧ e.equilibriumCondition

theorem energy_balance_evidence_closed (p : EnergyBalanceParameters) (e : RadiativeEquilibrium p) (E : EnergyBalanceEvidence p e) :
    EnergyBalanceClosed p e := by
  exact And.intro E.albedoBounded (And.intro E.emissivityBounded E.equilibriumClosed)

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse