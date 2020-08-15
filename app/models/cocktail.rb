class Cocktail < ApplicationRecord
  # has_many :doses, dependent: :destroy

  # A cocktail has many doses
  has_many :doses 

  # A cocktail has many ingredients through doses
  has_many :ingredients

  validates :name, presence: true
end
