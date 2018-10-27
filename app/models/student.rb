class Student < ApplicationRecord
  has_and_belongs_to_many :section
  
    validates :first_name, presence: true
    validates :last_name, presence: true
    
    def self.search(search)
      if search
        Student.where("name LIKE ?", "%#{search}%")
      else
        Student.all
      end
    end
end
