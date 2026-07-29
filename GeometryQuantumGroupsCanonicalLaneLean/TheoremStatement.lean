import GeometryQuantumGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  representationBoundary : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "geometry-quantum-groups"
  theoremName := "Geometry Quantum Groups"
  theoremObject := "Quantum group classification via spectral and representation-theoretic data"
  classicalBoundary := "Classical group classification not yet internalized"
  representationBoundary := "All finite-dimensional irreducible representations classified via Drinfeld-Jimbo construction"
  carriedRemainder := "Infinite-dimensional representation theory and braided tensor category structure remain as carries"
}

theorem source_key_matches : sourceTheoremStatement.sourceKey = "geometry-quantum-groups" := by rfl

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse
