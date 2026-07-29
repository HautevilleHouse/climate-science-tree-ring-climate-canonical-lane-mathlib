import ClimateScienceTreeRingClimateCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TreeRingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceTreeRingClimateCanonicalLaneLean
end HautevilleHouse