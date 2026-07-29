import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure BlastemaFormationPackage where
  progenitorCells : Type u
  proliferativeSignals : Type v
  extracellularMatrix : Type w
  cellProliferation : Prop
  cellMigration : Prop
  cellDifferentiation : Prop
  positionalIdentity : Prop

structure BlastemaFormationEvidence (B : BlastemaFormationPackage) where
  cellProliferationClosed : B.cellProliferation
  cellMigrationClosed : B.cellMigration
  cellDifferentiationClosed : B.cellDifferentiation
  positionalIdentityClosed : B.positionalIdentity

def BlastemaFormationClosed (B : BlastemaFormationPackage) : Prop :=
  B.cellProliferation ∧ B.cellMigration ∧ B.cellDifferentiation ∧ B.positionalIdentity

theorem blastema_formation_closed_from_evidence
    (B : BlastemaFormationPackage) (E : BlastemaFormationEvidence B) :
    BlastemaFormationClosed B := by
  exact And.intro E.cellProliferationClosed
    (And.intro E.cellMigrationClosed (And.intro E.cellDifferentiationClosed E.positionalIdentityClosed))

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse