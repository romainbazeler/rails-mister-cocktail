class Cocktail < ApplicationRecord
  # A cocktail has many doses
  has_many :doses, dependent: :destroy
  # A cocktail has many ingredients through doses
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
end
