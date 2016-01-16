class TeacherScoreBoard < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :score_board
end
