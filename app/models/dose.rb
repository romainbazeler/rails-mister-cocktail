class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.

  validates :description, :cocktail_id, :ingredients_id
end
