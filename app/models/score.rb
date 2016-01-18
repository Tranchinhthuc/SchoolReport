class Score < ActiveRecord::Base
  belongs_to :student_score_board
  belongs_to :student_subject_score
end
