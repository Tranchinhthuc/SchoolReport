class StudentScoreBoard < ActiveRecord::Base
  has_many :scores
  belongs_to :student
  belongs_to :score_board
end
