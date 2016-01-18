class Teacher < ActiveRecord::Base
  has_many :subject_groups
  has_many :score_boards, through: :teacher_score_boards
  has_many :teacher_score_boards
  belongs_to :school
end
