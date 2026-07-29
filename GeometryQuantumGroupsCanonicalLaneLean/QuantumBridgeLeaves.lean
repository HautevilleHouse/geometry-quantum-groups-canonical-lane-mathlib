import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryQuantumGroupsCanonicalLaneLean.QuantumGroupObjects

/-!
# Quantum Bridge Leaves

This module defines the bridge and gate closure conditions for the
quantum-group admissible class, following the epistemological pattern.
-/

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse