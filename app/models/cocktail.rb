class Cocktail < ApplicationRecord
  # has_many :doses, dependent: :destroy
  has_many :doses
end
