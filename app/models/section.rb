class Section < ApplicationRecord
  belongs_to :course
  has_many :students
  
  validates :first_name, presence: true
  validates :last_name, presence: true
end
