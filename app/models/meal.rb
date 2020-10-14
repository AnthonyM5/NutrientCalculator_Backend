class Meal < ApplicationRecord
    has_many :ingredients, dependent: :destroy
    has_many :foods, through: :ingredients
end
