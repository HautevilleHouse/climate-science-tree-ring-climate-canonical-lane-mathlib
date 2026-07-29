import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

structure TreeRingSample where
  species : String
  locationLat : Float
  locationLong : Float
  ringWidthSeries : List Float

treeRingSampleValid (s : TreeRingSample) : Prop :=
  s.species ≠ "" ∧ s.ringWidthSeries.length > 10

structure CrossdatingResult where
  yearAssignment : List Nat
  correlationCoefficient : Float
  pValue : Float

structure CrossdatingEvidence (s : TreeRingSample) (c : CrossdatingResult) where
  seriesLengthSufficient : s.ringWidthSeries.length > 10
  correlationSignificant : c.pValue < 0.05
  correlationClosed : c.correlationCoefficient > 0.5

structure CrossdatingClosed (s : TreeRingSample) (c : CrossdatingResult) : Prop :=
  s.ringWidthSeries.length > 10 ∧ c.pValue < 0.05 ∧ c.correlationCoefficient > 0.5

theorem crossdating_evidence_closed (s : TreeRingSample) (c : CrossdatingResult) (E : CrossdatingEvidence s c) :
    CrossdatingClosed s c := by
  exact And.intro E.seriesLengthSufficient (And.intro E.correlationSignificant E.correlationClosed)

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse