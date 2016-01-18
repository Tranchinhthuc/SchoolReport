class SubjectGroup < ActiveRecord::Base
  belongs_to :subject
  belongs_to :group
  belongs_to :teacher
  has_many :students, through: :student_subject_groups
  has_many :student_subject_groups
  has_one :score_board

  after_create :create_score_board

  private
  def create_score_board
    ScoreBoard.create name: (self.subject.name + self.group.name), subject_group: self
  end
end
