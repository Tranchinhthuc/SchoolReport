class Grade < ActiveRecord::Base
  has_many :groups
  belongs_to :school
end
