class Group < ActiveRecord::Base
  has_many :students, through: :student_groups
  has_many :student_groups
  has_many :subjects, through: :subject_groups
  has_many :subject_groups
  belongs_to :grade
  belongs_to :school

end
