class School < ActiveRecord::Base
  has_many :groups
  has_many :teachers
  has_many :school_manager

  enum school_type: [:primary, :secondary, :hight_school]
end
