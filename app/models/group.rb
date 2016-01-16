class Group < ActiveRecord::Base
  has_many :students, throught: :student_groups
  has_many :student_groups
  has_many :subjects, throught: :subject_groups
  has_many :subject_groups
  belongs_to :grade
  belongs_to :school

end
