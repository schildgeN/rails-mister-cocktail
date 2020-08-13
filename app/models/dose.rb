class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail_id, :ingredient_id, :description, presence: true, uniqueness: {scope: [:cocktail_id, :ingredient_id]}
end
