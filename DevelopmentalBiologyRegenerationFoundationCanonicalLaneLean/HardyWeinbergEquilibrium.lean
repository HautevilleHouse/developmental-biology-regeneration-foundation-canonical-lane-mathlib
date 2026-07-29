import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure HardyWeinbergPackage where
  population : Type u
  alleleA : population -> Prop
  alleleB : population -> Prop
  frequencyA : ℝ
  frequencyB : ℝ
  equilibriumFrequencies : Prop
  observedFrequencies : Prop
  deviationMeasure : ℝ

structure HardyWeinbergEvidence (P : HardyWeinbergPackage) where
  equilibriumFrequenciesClosed : P.equilibriumFrequencies
  observedFrequenciesClosed : P.observedFrequencies
  deviationMeasureClosed : P.deviationMeasure = 0

def HardyWeinbergClosed (P : HardyWeinbergPackage) : Prop :=
  P.equilibriumFrequencies ∧ P.observedFrequencies ∧ (P.deviationMeasure = 0)

theorem hardy_weinberg_closed_from_evidence (P : HardyWeinbergPackage) (E : HardyWeinbergEvidence P) : HardyWeinbergClosed P := by
  exact And.intro E.equilibriumFrequenciesClosed (And.intro E.observedFrequenciesClosed E.deviationMeasureClosed)

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse