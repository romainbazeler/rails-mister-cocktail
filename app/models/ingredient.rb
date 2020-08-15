class Ingredient < ApplicationRecord
  has_many :doses
  validates :name
end
