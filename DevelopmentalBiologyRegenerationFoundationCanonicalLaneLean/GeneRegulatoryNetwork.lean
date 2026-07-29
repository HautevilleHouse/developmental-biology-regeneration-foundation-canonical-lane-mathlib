import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Type u
  targetGenes : Type v
  edgeList : Type w
  regulatoryLogic : Prop
  networkTopology : Prop
  feedbackLoops : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  regulatoryLogicClosed : G.regulatoryLogic
  networkTopologyClosed : G.networkTopology
  feedbackLoopsClosed : G.feedbackLoops

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.regulatoryLogic ∧ G.networkTopology ∧ G.feedbackLoops

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryLogicClosed (And.intro E.networkTopologyClosed E.feedbackLoopsClosed)

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse