# == Schema Information
#
# Table name: nutrients
#
#  id               :integer          not null, primary key
#  food_id          :integer
#  nutrient_type_id :integer
#  amount           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Nutrient < ActiveRecord::Base
  belongs_to :food
  belongs_to :nutrient_type
  validates :food, uiniqueness: {scope: nutrient_type_id}
end
