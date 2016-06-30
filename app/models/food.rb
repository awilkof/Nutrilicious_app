# == Schema Information
#
# Table name: foods
#
#  id           :integer          not null, primary key
#  name         :string
#  image_url    :string
#  calories     :integer
#  serving_size :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  unit_of_m    :string
#

class Food < ActiveRecord::Base
has_many :nutrients
has_many :nutrient_types, through :nutrients
validates_presence_of :name
validates :name, uniqueness: {case_sensitive: false}


end
