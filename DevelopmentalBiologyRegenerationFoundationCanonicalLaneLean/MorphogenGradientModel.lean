import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogens : Type u
  gradientFormation : Prop
  positionalInformation : Prop
  thresholdResponse : Prop
  patternFormation : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  gradientFormationClosed : M.gradientFormation
  positionalInformationClosed : M.positionalInformation
  thresholdResponseClosed : M.thresholdResponse
  patternFormationClosed : M.patternFormation

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.gradientFormation ∧ M.positionalInformation ∧ M.thresholdResponse ∧ M.patternFormation

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.gradientFormationClosed
    (And.intro E.positionalInformationClosed
      (And.intro E.thresholdResponseClosed E.patternFormationClosed))

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse