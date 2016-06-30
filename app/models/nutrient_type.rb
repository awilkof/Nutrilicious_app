# == Schema Information
#
# Table name: nutrient_types
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class NutrientType < ActiveRecord::Base
  validates :name, uniqeness: true
  has_many :nutrients
  has_many :foods, through: :nutrients

end
