class Food < ActiveRecord::Base
has_many :nutrient_types

validates_presence_of :name
validates :name, uniqueness: {case_sensitive: false}


end
