class Hotel < ActiveRecord::Base
    has_many :room_categories, dependent: :destroy
    accepts_nested_attributes_for :room_categories, allow_destroy: true ## allow hotel object to accepts attributes for room categories.

    validates :name, presence: true
    
    def to_s
      name
    end
  
  
end
