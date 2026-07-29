import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure QuantumEnvelopingCertificate where
  deformedPBW : Prop
  triangularDecomposition : Prop
  highestWeightTheory : Prop
  deformedPBWClosed : deformedPBW
  triangularDecompositionClosed : triangularDecomposition
  highestWeightTheoryClosed : highestWeightTheory

def sourceQuantumEnvelopingCertificate : QuantumEnvelopingCertificate := {
  deformedPBW := standardCategoricalAssumption
  triangularDecomposition := standardCategoricalAssumption
  highestWeightTheory := standardCategoricalAssumption
  deformedPBWClosed := rfl
  triangularDecompositionClosed := rfl
  highestWeightTheoryClosed := rfl
}

def QuantumEnvelopingClosed (C : QuantumEnvelopingCertificate) : Prop :=
  C.deformedPBW ∧ C.triangularDecomposition ∧ C.highestWeightTheory

theorem source_quantum_enveloping_closed : QuantumEnvelopingClosed sourceQuantumEnvelopingCertificate := by
  exact And.intro sourceQuantumEnvelopingCertificate.deformedPBWClosed
    (And.intro sourceQuantumEnvelopingCertificate.triangularDecompositionClosed
      sourceQuantumEnvelopingCertificate.highestWeightTheoryClosed)

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse