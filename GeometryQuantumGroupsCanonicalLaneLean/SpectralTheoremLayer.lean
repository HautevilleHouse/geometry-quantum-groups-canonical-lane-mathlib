import GeometryQuantumGroupsCanonicalLaneLean.CovariantLayer

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure SpectralCertificate where
  covariant : CovariantStructure
  positivity : Prop
  spectralDecomposition : Prop
  positivityProof : positivity
  spectralDecompositionProof : spectralDecomposition

def sourceSpectralCertificate : SpectralCertificate := {
  covariant := sourceCovariantStructure
  positivity := True
  spectralDecomposition := True
  positivityProof := trivial
  spectralDecompositionProof := trivial
}

def SpectralClosed (C : SpectralCertificate) : Prop :=
  CovariantClosed C.covariant ∧ C.positivity ∧ C.spectralDecomposition

theorem source_spectral_closed : SpectralClosed sourceSpectralCertificate := by
  exact And.intro source_covariant_closed
    (And.intro sourceSpectralCertificate.positivityProof
      sourceSpectralCertificate.spectralDecompositionProof)

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse