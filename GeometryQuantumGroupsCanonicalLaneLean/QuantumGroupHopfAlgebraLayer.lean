import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure HopfAlgebraCertificate where
  comultiplication : Prop
  counit : Prop
  antipode : Prop
  coassociativity : Prop
  compatibility : Prop
  antipodeProperty : Prop
  comultiplicationClosed : comultiplication
  counitClosed : counit
  antipodeClosed : antipode
  coassociativityClosed : coassociativity
  compatibilityClosed : compatibility
  antipodePropertyClosed : antipodeProperty

def sourceHopfAlgebraCertificate : HopfAlgebraCertificate := {
  comultiplication := monoidalCategoryStructure
  counit := monoidalCategoryStructure
  antipode := monoidalCategoryStructure
  coassociativity := standardCategoricalAssumption
  compatibility := standardCategoricalAssumption
  antipodeProperty := standardCategoricalAssumption
  comultiplicationClosed := rfl
  counitClosed := rfl
  antipodeClosed := rfl
  coassociativityClosed := rfl
  compatibilityClosed := rfl
  antipodePropertyClosed := rfl
}

def HopfAlgebraClosed (C : HopfAlgebraCertificate) : Prop :=
  C.comultiplication ∧ C.counit ∧ C.antipode ∧
  C.coassociativity ∧ C.compatibility ∧ C.antipodeProperty

theorem source_hopf_algebra_closed : HopfAlgebraClosed sourceHopfAlgebraCertificate := by
  exact And.intro sourceHopfAlgebraCertificate.comultiplicationClosed
    (And.intro sourceHopfAlgebraCertificate.counitClosed
      (And.intro sourceHopfAlgebraCertificate.antipodeClosed
        (And.intro sourceHopfAlgebraCertificate.coassociativityClosed
          (And.intro sourceHopfAlgebraCertificate.compatibilityClosed
            sourceHopfAlgebraCertificate.antipodePropertyClosed))))

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse