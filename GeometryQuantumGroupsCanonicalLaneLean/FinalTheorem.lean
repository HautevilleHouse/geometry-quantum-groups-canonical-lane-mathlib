import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryQuantumGroupsCanonicalLaneLean.QuantumBridgeLeaves

/-!
# Final Theorem: Geometry Quantum Groups

This file defines the ConstrainedTheoremClosure for the quantum-group domain
and provides the epistemological proof using bridge and gate lemmas.
-/

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

def ConstrainedGeometricQuantumGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_quantum_group_closure (A : AdmissibleClass) :
    ConstrainedGeometricQuantumGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse