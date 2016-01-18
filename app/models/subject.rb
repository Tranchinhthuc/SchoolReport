class Subject < ActiveRecord::Base
  has_many :groups, through: :subject_groups
  has_many :subject_groups
end
