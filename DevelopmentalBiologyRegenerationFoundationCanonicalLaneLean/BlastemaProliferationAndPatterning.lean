import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean.WoundHealingSignalingNetwork

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure BlastemaProliferationAndPatterning {N : WoundHealingSignalingNetwork} where
  cellProliferationActivated : Prop
  positionalIdentitySpecified : Prop
  morphogenGradientEstablished : Prop
  proximodistalAxisFormed : Prop

structure BlastemaProliferationAndPatterningEvidence {N : WoundHealingSignalingNetwork} (B : BlastemaProliferationAndPatterning N) where
  cellProliferationActivatedClosed : B.cellProliferationActivated
  positionalIdentitySpecifiedClosed : B.positionalIdentitySpecified
  morphogenGradientEstablishedClosed : B.morphogenGradientEstablished
  proximodistalAxisFormedClosed : B.proximodistalAxisFormed

def BlastemaProliferationAndPatterningClosed {N : WoundHealingSignalingNetwork} (B : BlastemaProliferationAndPatterning N) : Prop :=
  B.cellProliferationActivated ∧ B.positionalIdentitySpecified ∧ B.morphogenGradientEstablished ∧ B.proximodistalAxisFormed

theorem blastema_proliferation_and_patterning_closed_from_evidence
    {N : WoundHealingSignalingNetwork} (B : BlastemaProliferationAndPatterning N)
    (E : BlastemaProliferationAndPatterningEvidence B) : BlastemaProliferationAndPatterningClosed B := by
  exact And.intro E.cellProliferationActivatedClosed
    (And.intro E.positionalIdentitySpecifiedClosed
      (And.intro E.morphogenGradientEstablishedClosed E.proximodistalAxisFormedClosed))

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse
