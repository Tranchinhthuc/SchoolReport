class StudentSubjectGroup < ActiveRecord::Base
  belongs_to :student
  belongs_to :subject_group
  has_many :scores
  belongs_to :score_board
end
