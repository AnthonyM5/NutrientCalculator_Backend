class Food < ApplicationRecord
    include ActiveModel::Serializers::JSON

    serialize :nutrient_hash

    def self.create_by_food_hash(food)
        create(
            name: food["description"],
            nutrient_hash: food["foodNutrients"],
            science_name: food["scientificName"],
            fdcid: food["fdcId"]
        )
    end

end
