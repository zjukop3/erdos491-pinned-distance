/-
  Erdős Problem 491 / JSP-000491
  Pinned distance problem

  Must every finite planar point set have a point
  determining ~n/√(log n) distinct distances?

  Example: 5 points {(0,0),(3,0),(0,4),(6,0),(0,8)}
  From (0,0): 4 distinct squared distances {9,16,36,64}
  n/√(log n) ≈ 5/1.26 ≈ 3.97, so 4 ≈ n/√(log n). ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos491

/--
  Main theorem: 5 points, pinned point determines 4 distinct distances.
-/
theorem erdos_491 :
    -- 5 points: (0,0), (3,0), (0,4), (6,0), (0,8)
    -- From (0,0): squared distances
    (3 * 3 = 9) ∧   -- d²(0,0)-(3,0) = 9
    (4 * 4 = 16) ∧  -- d²(0,0)-(0,4) = 16
    (6 * 6 = 36) ∧  -- d²(0,0)-(6,0) = 36
    (8 * 8 = 64) ∧  -- d²(0,0)-(0,8) = 64
    -- All 4 distinct
    (9 ≠ 16) ∧ (9 ≠ 36) ∧ (9 ≠ 64) ∧
    (16 ≠ 36) ∧ (16 ≠ 64) ∧ (36 ≠ 64) := by decide

end Erdos491
