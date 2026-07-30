import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean

structure GroupHomomorphism (G H : Type) [Group G] [Group H] where
  map : G → H
  preserves_mul : ∀ a b : G, map (a * b) = map a * map b

theorem kernel_is_normal_subgroup {G H : Type} [Group G] [Group H]
    (φ : GroupHomomorphism G H) : NormalSubgroup G :=
  { carrier := {x : G | φ.map x = 1}
    contains_one := by
      calc φ.map 1 = φ.map (1 * 1) := by simp
        _ = φ.map 1 * φ.map 1 := by rw [φ.preserves_mul]
        _ = φ.map 1 := by
      sorry
    closed_mul := by
      intro a b ha hb
      calc φ.map (a * b) = φ.map a * φ.map b := φ.preserves_mul a b
        _ = 1 * 1 := by rw [ha, hb]
        _ = 1 := by simp
    closed_inv := by
      intro a ha
      calc φ.map a⁻¹ = (φ.map a)⁻¹ := by
        apply mul_left_cancel₀ (x := φ.map a) (y := _)
        calc φ.map a * φ.map a⁻¹ = φ.map (a * a⁻¹) := by rw [φ.preserves_mul]
          _ = φ.map 1 := by simp
          _ = 1 := ha
      _ = 1⁻¹ := by rw [ha]
      _ = 1 := by simp
  }

end MetamathematicalConsiderationsGroupTheoryFoundationCanonicalLaneLean
end HautevilleHouse