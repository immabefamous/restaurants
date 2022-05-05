class Review < ActiveRecord::Base
    belongs_to :restaurants
    belongs_to :customers

    def customer
        self.customers
    end

    def restaurant
        self.restaurants
    end

    def full_review(restaurant, customer)
        "Review for #{restaurants.name} by #{customers.full_name}: #{self.rating} stars.
    end 
end