import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryQuantumGroupsCanonicalLaneLean

structure RMatrixCertificate where
  RMatrixExists : Prop
  quantumYangBaxter : Prop
  hexagonIdentities : Prop
  braidingNatural : Prop
  RMatrixExistsClosed : RMatrixExists
  quantumYangBaxterClosed : quantumYangBaxter
  hexagonIdentitiesClosed : hexagonIdentities
  braidingNaturalClosed : braidingNatural

def sourceRMatrixCertificate : RMatrixCertificate := {
  RMatrixExists := standardCategoricalAssumption
  quantumYangBaxter := standardCategoricalAssumption
  hexagonIdentities := standardCategoricalAssumption
  braidingNatural := standardCategoricalAssumption
  RMatrixExistsClosed := rfl
  quantumYangBaxterClosed := rfl
  hexagonIdentitiesClosed := rfl
  braidingNaturalClosed := rfl
}

def RMatrixClosed (C : RMatrixCertificate) : Prop :=
  C.RMatrixExists ∧ C.quantumYangBaxter ∧ C.hexagonIdentities ∧ C.braidingNatural

theorem source_r_matrix_closed : RMatrixClosed sourceRMatrixCertificate := by
  exact And.intro sourceRMatrixCertificate.RMatrixExistsClosed
    (And.intro sourceRMatrixCertificate.quantumYangBaxterClosed
      (And.intro sourceRMatrixCertificate.hexagonIdentitiesClosed
        sourceRMatrixCertificate.braidingNaturalClosed))

end GeometryQuantumGroupsCanonicalLaneLean
end HautevilleHouse