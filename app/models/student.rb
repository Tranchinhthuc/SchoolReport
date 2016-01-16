class Student < ActiveRecord::Base
  has_many :school_reports
  has_many :groups, throught: :student_groups
  has_many :student_groups
  has_many :score_boards, throught: :student_score_boards
  has_many :student_score_boards
end
