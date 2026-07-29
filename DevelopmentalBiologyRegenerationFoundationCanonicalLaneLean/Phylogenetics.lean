import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure PhylogeneticTree where
  taxa : Set String
  topology : Tree String
  branchLengths : taxa -> ℝ
  rooted : Bool

def ultrametric (T : PhylogeneticTree) : Prop :=
  ∀ (i j k : String), i ∈ T.taxa → j ∈ T.taxa → k ∈ T.taxa →
    (dist i j) ≤ max (dist i k) (dist k j)

structure PhylogeneticsPackage where
  tree : PhylogeneticTree
  molecularClock : Prop
  likelihood : ℝ

def MolecularClockHypothesis (P : PhylogeneticsPackage) : Prop :=
  ∀ (i j : String), i ∈ P.tree.taxa → j ∈ P.tree.taxa →
    (branchLength i) = (branchLength j)

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeUltrametricClosed : ultrametric P.tree
  molecularClockClosed : MolecularClockHypothesis P
  likelihoodClosed : P.likelihood > 0

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  ultrametric P.tree ∧ MolecularClockHypothesis P ∧ (P.likelihood > 0)

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeUltrametricClosed (And.intro E.molecularClockClosed E.likelihoodClosed)

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse