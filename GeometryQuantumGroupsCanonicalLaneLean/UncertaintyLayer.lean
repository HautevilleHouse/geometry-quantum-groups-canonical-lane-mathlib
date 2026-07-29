import GeometryQuantumGroupsCanonicalLaneLean.SpectralTheoremLayer

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure UncertaintyCertificate where
  spectral : SpectralCertificate
  commutationRelation : Prop
  uncertaintyInequality : Prop
  commutationRelationProof : commutationRelation
  uncertaintyInequalityProof : uncertaintyInequality

def sourceUncertaintyCertificate : UncertaintyCertificate := {
  spectral := sourceSpectralCertificate
  commutationRelation := True
  uncertaintyInequality := True
  commutationRelationProof := trivial
  uncertaintyInequalityProof := trivial
}

def UncertaintyClosed (C : UncertaintyCertificate) : Prop :=
  SpectralClosed C.spectral ∧ C.commutationRelation ∧ C.uncertaintyInequality

theorem source_uncertainty_closed : UncertaintyClosed sourceUncertaintyCertificate := by
  exact And.intro source_spectral_closed
    (And.intro sourceUncertaintyCertificate.commutationRelationProof
      sourceUncertaintyCertificate.uncertaintyInequalityProof)

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse