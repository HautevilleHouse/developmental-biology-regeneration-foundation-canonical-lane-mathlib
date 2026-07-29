import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean.GeneticRegulatoryNetwork
import DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean.WaddingtonLandscape
import DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean.RegenerationCompetence

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let G := A.object
  GeneticRegulatoryNetworkClosed G

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDevelopmentalRegenerationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_developmental_regeneration_endgame (A : AdmissibleClass) :
    ConstrainedDevelopmentalRegenerationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse