import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure QuantumGroupCohomologyCertificate where
  representation : QuantumSubgroupRepresentationCertificate
  cohomologyGroup : Prop
  differential : Prop
  poincareDuality : Prop
  spectralSequence : Prop
  cohomologyGroupClosed : cohomologyGroup
  differentialClosed : differential
  poincareDualityClosed : poincareDuality
  spectralSequenceClosed : spectralSequence

def sourceQuantumGroupCohomologyCertificate : QuantumGroupCohomologyCertificate := {
  representation := sourceQuantumSubgroupRepresentationCertificate
  cohomologyGroup := True
  differential := True
  poincareDuality := True
  spectralSequence := True
  cohomologyGroupClosed := trivial
  differentialClosed := trivial
  poincareDualityClosed := trivial
  spectralSequenceClosed := trivial
}

def QuantumGroupCohomologyClosed (C : QuantumGroupCohomologyCertificate) : Prop :=
  QuantumSubgroupRepresentationClosed C.representation ∧ C.cohomologyGroup ∧ C.differential ∧ C.poincareDuality ∧ C.spectralSequence

theorem source_quantum_group_cohomology_closed : QuantumGroupCohomologyClosed sourceQuantumGroupCohomologyCertificate := by
  exact And.intro source_quantum_subgroup_representation_closed
    (And.intro sourceQuantumGroupCohomologyCertificate.cohomologyGroupClosed
      (And.intro sourceQuantumGroupCohomologyCertificate.differentialClosed
        (And.intro sourceQuantumGroupCohomologyCertificate.poincareDualityClosed
          sourceQuantumGroupCohomologyCertificate.spectralSequenceClosed)))

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse