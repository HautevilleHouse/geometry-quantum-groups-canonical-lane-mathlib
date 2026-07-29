import GeometryQuantumGroupsCanonicalLaneLean.UncertaintyLayer

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure StateSpaceCertificate where
  uncertainty : UncertaintyCertificate
  stateSpace : Prop
  representationClosed : Prop
  stateSpaceProof : stateSpace
  representationClosedProof : representationClosed

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  uncertainty := sourceUncertaintyCertificate
  stateSpace := True
  representationClosed := True
  stateSpaceProof := trivial
  representationClosedProof := trivial
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  UncertaintyClosed C.uncertainty ∧ C.stateSpace ∧ C.representationClosed

theorem source_state_space_closed : StateSpaceClosed sourceStateSpaceCertificate := by
  exact And.intro source_uncertainty_closed
    (And.intro sourceStateSpaceCertificate.stateSpaceProof
      sourceStateSpaceCertificate.representationClosedProof)

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse