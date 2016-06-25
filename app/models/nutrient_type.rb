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
  belongs_to :nutrient
end
