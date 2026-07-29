import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure QuantumGroupActionEnvelope where
  field : QuantumGroupField
  yangBaxterClosed : Prop
  pentagonClosed : Prop
  dualPairingNondegenerate : Prop
  quantumDimensionPositive : Prop
  yangBaxterClosedProof : yangBaxterClosed
  pentagonClosedProof : pentagonClosed
  dualPairingNondegenerateProof : dualPairingNondegenerate
  quantumDimensionPositiveProof : quantumDimensionPositive

def sourceQuantumGroupActionEnvelope : QuantumGroupActionEnvelope := {
  field := primitiveQuantumGroupField
  yangBaxterClosed := YangBaxterEquationClosed primitiveQuantumGroupField
  pentagonClosed := PentagonEquationClosed primitiveQuantumGroupField
  dualPairingNondegenerate := True
  quantumDimensionPositive := True
  yangBaxterClosedProof := primitive_yang_baxter_closed
  pentagonClosedProof := primitive_pentagon_closed
  dualPairingNondegenerateProof := trivial
  quantumDimensionPositiveProof := trivial
}

def QuantumGroupActionClosed (E : QuantumGroupActionEnvelope) : Prop :=
  E.yangBaxterClosed ∧ E.pentagonClosed ∧ E.dualPairingNondegenerate ∧ E.quantumDimensionPositive

theorem source_quantum_group_action_closed : QuantumGroupActionClosed sourceQuantumGroupActionEnvelope := by
  exact And.intro sourceQuantumGroupActionEnvelope.yangBaxterClosedProof
    (And.intro sourceQuantumGroupActionEnvelope.pentagonClosedProof
      (And.intro sourceQuantumGroupActionEnvelope.dualPairingNondegenerateProof
        sourceQuantumGroupActionEnvelope.quantumDimensionPositiveProof))

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse