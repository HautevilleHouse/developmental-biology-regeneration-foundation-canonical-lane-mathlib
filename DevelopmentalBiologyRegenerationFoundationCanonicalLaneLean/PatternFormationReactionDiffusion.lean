import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean

structure PatternFormationReactionDiffusionPackage where
  morphogenField : Type u
  reactionKinetics : Type v
  diffusionCoefficients : Type w
  turingInstability : Prop
  patternWavelength : Prop
  lateralInhibition : Prop
  selfOrganization : Prop

structure PatternFormationReactionDiffusionEvidence (P : PatternFormationReactionDiffusionPackage) where
  turingInstabilityClosed : P.turingInstability
  patternWavelengthClosed : P.patternWavelength
  lateralInhibitionClosed : P.lateralInhibition
  selfOrganizationClosed : P.selfOrganization

def PatternFormationReactionDiffusionClosed (P : PatternFormationReactionDiffusionPackage) : Prop :=
  P.turingInstability ∧ P.patternWavelength ∧ P.lateralInhibition ∧ P.selfOrganization

theorem pattern_formation_reaction_diffusion_closed_from_evidence
    (P : PatternFormationReactionDiffusionPackage) (E : PatternFormationReactionDiffusionEvidence P) :
    PatternFormationReactionDiffusionClosed P := by
  exact And.intro E.turingInstabilityClosed
    (And.intro E.patternWavelengthClosed (And.intro E.lateralInhibitionClosed E.selfOrganizationClosed))

end DevelopmentalBiologyRegenerationFoundationCanonicalLaneLean
end HautevilleHouse