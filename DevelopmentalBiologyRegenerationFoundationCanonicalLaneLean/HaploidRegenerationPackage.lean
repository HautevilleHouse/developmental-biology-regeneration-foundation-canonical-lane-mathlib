import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure HaploidRegenerationPackage (A : AdmissibleClass) where
  genomeIntegrityRestored : Prop
  cellCycleReentryActivated : Prop
  WntSignalingRequired : Prop
  dedifferentiationEnabled : Prop

structure HaploidRegenerationEvidence (A : AdmissibleClass) (P : HaploidRegenerationPackage A) where
  genomeIntegrityRestoredClosed : P.genomeIntegrityRestored
  cellCycleReentryActivatedClosed : P.cellCycleReentryActivated
  WntSignalingRequiredClosed : P.WntSignalingRequired
  dedifferentiationEnabledClosed : P.dedifferentiationEnabled

def HaploidRegenerationClosed (A : AdmissibleClass) (P : HaploidRegenerationPackage A) : Prop :=
  P.genomeIntegrityRestored ∧ P.cellCycleReentryActivated ∧ P.WntSignalingRequired ∧ P.dedifferentiationEnabled

theorem haploid_regeneration_closed_from_evidence (A : AdmissibleClass) (P : HaploidRegenerationPackage A) (E : HaploidRegenerationEvidence A P) :
    HaploidRegenerationClosed A P := by
  exact And.intro E.genomeIntegrityRestoredClosed
    (And.intro E.cellCycleReentryActivatedClosed
      (And.intro E.WntSignalingRequiredClosed E.dedifferentiationEnabledClosed))

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse
