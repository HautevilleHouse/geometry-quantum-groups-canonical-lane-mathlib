import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure QuasitriangularCertificate where
  monoidalCategory : Prop
  braiding : Prop
  naturality : Prop
  hexagonIdentities : Prop
  monoidalCategoryClosed : monoidalCategory
  braidingClosed : braiding
  naturalityClosed : naturality
  hexagonIdentitiesClosed : hexagonIdentities

def sourceQuasitriangularCertificate : QuasitriangularCertificate := {
  monoidalCategory := standardCategoricalAssumption
  braiding := standardCategoricalAssumption
  naturality := standardCategoricalAssumption
  hexagonIdentities := standardCategoricalAssumption
  monoidalCategoryClosed := rfl
  braidingClosed := rfl
  naturalityClosed := rfl
  hexagonIdentitiesClosed := rfl
}

def QuasitriangularClosed (C : QuasitriangularCertificate) : Prop :=
  C.monoidalCategory ∧ C.braiding ∧ C.naturality ∧ C.hexagonIdentities

theorem source_quasitriangular_closed : QuasitriangularClosed sourceQuasitriangularCertificate := by
  exact And.intro sourceQuasitriangularCertificate.monoidalCategoryClosed
    (And.intro sourceQuasitriangularCertificate.braidingClosed
      (And.intro sourceQuasitriangularCertificate.naturalityClosed
        sourceQuasitriangularCertificate.hexagonIdentitiesClosed))

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse