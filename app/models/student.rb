class Student < ActiveRecord::Base
  has_many :school_reports
  has_many :groups, through: :student_groups
  has_many :student_groups
  has_many :score_boards, through: :student_score_boards
  has_many :student_score_boards
  has_many :subject_groups, through: :student_subject_groups
  has_many :student_subject_groups
  belongs_to :parrent
end
