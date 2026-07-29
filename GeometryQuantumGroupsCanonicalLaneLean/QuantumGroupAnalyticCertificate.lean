import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure QuantumGroupAnalyticCertificate where
  quantumGroupClosed : Prop
  actionLayerClosed : Prop
  representationLayerClosed : Prop
  cohomologyLayerClosed : Prop
  quantumGroupClosedProof : quantumGroupClosed
  actionLayerClosedProof : actionLayerClosed
  representationLayerClosedProof : representationLayerClosed
  cohomologyLayerClosedProof : cohomologyLayerClosed

def sourceQuantumGroupAnalyticCertificate : QuantumGroupAnalyticCertificate := {
  quantumGroupClosed := QuantumGroupClosed primitiveQuantumGroupField
  actionLayerClosed := QuantumGroupActionClosed sourceQuantumGroupActionEnvelope
  representationLayerClosed := QuantumSubgroupRepresentationClosed sourceQuantumSubgroupRepresentationCertificate
  cohomologyLayerClosed := QuantumGroupCohomologyClosed sourceQuantumGroupCohomologyCertificate
  quantumGroupClosedProof := primitive_quantum_group_closed
  actionLayerClosedProof := source_quantum_group_action_closed
  representationLayerClosedProof := source_quantum_subgroup_representation_closed
  cohomologyLayerClosedProof := source_quantum_group_cohomology_closed
}

def QuantumGroupAnalyticCertificateClosed (C : QuantumGroupAnalyticCertificate) : Prop :=
  C.quantumGroupClosed ∧ C.actionLayerClosed ∧ C.representationLayerClosed ∧ C.cohomologyLayerClosed

theorem source_quantum_group_analytic_certificate_closed : QuantumGroupAnalyticCertificateClosed sourceQuantumGroupAnalyticCertificate := by
  exact And.intro sourceQuantumGroupAnalyticCertificate.quantumGroupClosedProof
    (And.intro sourceQuantumGroupAnalyticCertificate.actionLayerClosedProof
      (And.intro sourceQuantumGroupAnalyticCertificate.representationLayerClosedProof
        sourceQuantumGroupAnalyticCertificate.cohomologyLayerClosedProof))

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse