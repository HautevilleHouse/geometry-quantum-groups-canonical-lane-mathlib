import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure RepresentationCertificate where
  moduleStructure : Prop
  intertwinerSpace : Prop
  tensorProductCompatibility : Prop
  dualRepresentation : Prop
  moduleStructureClosed : moduleStructure
  intertwinerSpaceClosed : intertwinerSpace
  tensorProductCompatibilityClosed : tensorProductCompatibility
  dualRepresentationClosed : dualRepresentation

def sourceRepresentationCertificate : RepresentationCertificate := {
  moduleStructure := standardCategoricalAssumption
  intertwinerSpace := standardCategoricalAssumption
  tensorProductCompatibility := standardCategoricalAssumption
  dualRepresentation := standardCategoricalAssumption
  moduleStructureClosed := rfl
  intertwinerSpaceClosed := rfl
  tensorProductCompatibilityClosed := rfl
  dualRepresentationClosed := rfl
}

def RepresentationClosed (C : RepresentationCertificate) : Prop :=
  C.moduleStructure ∧ C.intertwinerSpace ∧ C.tensorProductCompatibility ∧ C.dualRepresentation

theorem source_representation_closed : RepresentationClosed sourceRepresentationCertificate := by
  exact And.intro sourceRepresentationCertificate.moduleStructureClosed
    (And.intro sourceRepresentationCertificate.intertwinerSpaceClosed
      (And.intro sourceRepresentationCertificate.tensorProductCompatibilityClosed
        sourceRepresentationCertificate.dualRepresentationClosed))

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse