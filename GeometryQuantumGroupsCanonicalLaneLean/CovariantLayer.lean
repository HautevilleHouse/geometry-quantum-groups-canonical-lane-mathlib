import GeometryQuantumGroupsCanonicalLaneLean.QuantumGroupObjects

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure CovariantStructure where
  leftAction : QuantumGroup → Type → Type
  rightAction : QuantumGroup → Type → Type
  intertwinerCondition : Prop
  intertwinerConditionProof : intertwinerCondition

def sourceCovariantStructure : CovariantStructure := {
  leftAction := fun _ _ => Unit
  rightAction := fun _ _ => Unit
  intertwinerCondition := True
  intertwinerConditionProof := trivial
}

def CovariantClosed (C : CovariantStructure) : Prop :=
  C.intertwinerCondition

theorem source_covariant_closed : CovariantClosed sourceCovariantStructure := by
  exact sourceCovariantStructure.intertwinerConditionProof

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse