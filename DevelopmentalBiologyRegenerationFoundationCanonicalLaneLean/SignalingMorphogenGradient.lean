import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure SignalingMorphogenGradientPackage where
  morphogen : Type u
  sourceTissue : Type v
  concentrationField : Type w
  gradientFormation : Prop
  thresholdSensing : Prop
  gradientRobustness : Prop

structure SignalingMorphogenGradientEvidence (S : SignalingMorphogenGradientPackage) where
  gradientFormationClosed : S.gradientFormation
  thresholdSensingClosed : S.thresholdSensing
  gradientRobustnessClosed : S.gradientRobustness

def SignalingMorphogenGradientClosed (S : SignalingMorphogenGradientPackage) : Prop :=
  S.gradientFormation ∧ S.thresholdSensing ∧ S.gradientRobustness

theorem signaling_morphogen_gradient_closed_from_evidence
    (S : SignalingMorphogenGradientPackage) (E : SignalingMorphogenGradientEvidence S) :
    SignalingMorphogenGradientClosed S := by
  exact And.intro E.gradientFormationClosed (And.intro E.thresholdSensingClosed E.gradientRobustnessClosed)

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse