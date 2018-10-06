class Student < ApplicationRecord
  has_and_belongs_to_many :section
  
    validates :first_name, presence: true
    validates :last_name, presence: true
end
