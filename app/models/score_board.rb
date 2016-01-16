class ScoreBoard < ActiveRecord::Base
  has_many :students, throught: :student_score_boards
  has_many :student_score_boards
  has_many :teachers, throught: :teacher_score_boards
  has_many :teacher_score_boards
end
