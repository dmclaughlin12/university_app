class Course < ApplicationRecord
    has_many :sections
    
    validates :name, presence: true
    validates :number, presence: true, format: {:with => /^\d+\.?\d*$/, :message => "only allows numbers", :multiline => true}
    validates :credit_hours, presence: true, format: {:with => /^\d+\.?\d*$/, :message => "only allows numbers", :multiline => true}
    validates_associated :sections
end
