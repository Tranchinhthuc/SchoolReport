class Subject < ActiveRecord::Base
  has_many :groups, throught: :subject_groups
  has_many :subject_groups
end
