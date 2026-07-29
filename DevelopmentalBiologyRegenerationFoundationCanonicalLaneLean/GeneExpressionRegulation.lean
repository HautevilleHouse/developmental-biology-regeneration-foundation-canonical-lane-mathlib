import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure GeneExpressionPackage where
  transcriptionFactors : Type u
  targetGenes : Type v
  regulatoryNetwork : Prop
  expressionLevels : Prop
  perturbationResponse : Prop

structure GeneExpressionEvidence (G : GeneExpressionPackage) where
  regulatoryNetworkClosed : G.regulatoryNetwork
  expressionLevelsClosed : G.expressionLevels
  perturbationResponseClosed : G.perturbationResponse

def GeneExpressionClosed (G : GeneExpressionPackage) : Prop :=
  G.regulatoryNetwork ∧ G.expressionLevels ∧ G.perturbationResponse

theorem gene_expression_closed_from_evidence (G : GeneExpressionPackage)
    (E : GeneExpressionEvidence G) : GeneExpressionClosed G := by
  exact And.intro E.regulatoryNetworkClosed
    (And.intro E.expressionLevelsClosed E.perturbationResponseClosed)

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse