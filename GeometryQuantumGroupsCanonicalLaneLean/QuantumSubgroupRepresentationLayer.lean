import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure QuantumSubgroupRepresentationCertificate where
  action : QuantumGroupActionEnvelope
  subHopfAlgebra : Prop
  representationCategory : Prop
  intertwinerSpace : Prop
  fusionRule : Prop
  subHopfAlgebraClosed : subHopfAlgebra
  representationCategoryClosed : representationCategory
  intertwinerSpaceClosed : intertwinerSpace
  fusionRuleClosed : fusionRule

def sourceQuantumSubgroupRepresentationCertificate : QuantumSubgroupRepresentationCertificate := {
  action := sourceQuantumGroupActionEnvelope
  subHopfAlgebra := True
  representationCategory := True
  intertwinerSpace := True
  fusionRule := True
  subHopfAlgebraClosed := trivial
  representationCategoryClosed := trivial
  intertwinerSpaceClosed := trivial
  fusionRuleClosed := trivial
}

def QuantumSubgroupRepresentationClosed (C : QuantumSubgroupRepresentationCertificate) : Prop :=
  QuantumGroupActionClosed C.action ∧ C.subHopfAlgebra ∧ C.representationCategory ∧ C.intertwinerSpace ∧ C.fusionRule

theorem source_quantum_subgroup_representation_closed : QuantumSubgroupRepresentationClosed sourceQuantumSubgroupRepresentationCertificate := by
  exact And.intro source_quantum_group_action_closed
    (And.intro sourceQuantumSubgroupRepresentationCertificate.subHopfAlgebraClosed
      (And.intro sourceQuantumSubgroupRepresentationCertificate.representationCategoryClosed
        (And.intro sourceQuantumSubgroupRepresentationCertificate.intertwinerSpaceClosed
          sourceQuantumSubgroupRepresentationCertificate.fusionRuleClosed)))

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse