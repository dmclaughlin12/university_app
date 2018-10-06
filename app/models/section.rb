class Section < ApplicationRecord
  belongs_to :course
  has_many :students
  

  validates :semester, presence: true, length: { maximum: 6, message: "only SPRING, FALL, or SUMMER are valid"}
  validates :department, presence: true
end
