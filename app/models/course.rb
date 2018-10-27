class Course < ApplicationRecord
    has_many :sections
    
    def self.search(search)
      if search
        Course.where("name LIKE ?", "%#{search}%")
      else
        Course.all
      end
    end
    
    validates :name, presence: true
    validates :number, presence: true, format: {:with => /^\d+\.?\d*$/, :message => "only allows numbers", :multiline => true}
    validates :credit_hours, presence: true, format: {:with => /^\d+\.?\d*$/, :message => "only allows numbers", :multiline => true}
    validates_associated :sections
end
