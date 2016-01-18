class ScoreBoard < ActiveRecord::Base
  has_many :students, through: :student_score_boards
  has_many :student_score_boards
  has_many :teachers, through: :teacher_score_boards
  has_many :teacher_score_boards
  has_many :student_subject_groups
  belongs_to :subject_group

  after_create :add_student_subject_groups

  private
  def add_student_subject_groups
    student_subject_groups = StudentSubjectGroup.where(subject_group: self.subject_group)
    self.update_attributes student_subject_groups: student_subject_groups
  end
end
