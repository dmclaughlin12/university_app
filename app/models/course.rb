class Course < ApplicationRecord
    has_many :sections
    
    validates :name, presence: true
    validates :number, presence: true, format: {with: /^[0-9]+$/, message: "only allows numbers"}
    validates :credit_hours, presence: true
    validates_associated :sections
    
end
