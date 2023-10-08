SCALE = {
  A: 90..100,
  B: 80..89,
  C: 70..79,
  D: 60..69,
  F: 0..59
}


def get_grade(score1, score2, score3)
  SCALE.find do |_, value|
    value.cover?((score1 + score2 + score3) / 3)
  end.first.to_s
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"