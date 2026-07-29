import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure LinkageAnalysisPackage where
  chromosome : Type u
  locusA : chromosome -> Prop
  locusB : chromosome -> Prop
  recombinationFraction : ℝ
  linkageEquilibrium : Prop
  lodScore : ℝ

structure LinkageAnalysisEvidence (P : LinkageAnalysisPackage) where
  recombinationFractionClosed : P.recombinationFraction ≥ 0 ∧ P.recombinationFraction ≤ 0.5
  linkageEquilibriumClosed : P.linkageEquilibrium
  lodScoreClosed : P.lodScore > 3

def LinkageAnalysisClosed (P : LinkageAnalysisPackage) : Prop :=
  (P.recombinationFraction ≥ 0 ∧ P.recombinationFraction ≤ 0.5) ∧ P.linkageEquilibrium ∧ (P.lodScore > 3)

theorem linkage_analysis_closed_from_evidence (P : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence P) : LinkageAnalysisClosed P := by
  exact And.intro E.recombinationFractionClosed (And.intro E.linkageEquilibriumClosed E.lodScoreClosed)

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse