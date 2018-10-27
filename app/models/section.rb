class Section < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :students
  
  def name_with_number
    "#{semester} #{number}"
  end
  
    def self.search(search)
      if search
        Section.where("name LIKE ?", "%#{search}%")
      else
        Section.all
      end
    end

  validates :semester, presence: true, length: { maximum: 6, message: "only SPRING, FALL, or SUMMER are valid"}
  validates :department, presence: true
end
