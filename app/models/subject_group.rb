class SubjectGroup < ActiveRecord::Base
  belongs_to :subject
  belongs_to :group
  belongs_to :teacher
end
