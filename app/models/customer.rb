class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def allreviews
        self.reviews
    end
    
    def allrestaurants
        self.restaurants
    end

    def full_name
        "Customer name is #{first_name} #{last_name}"
    end

    def favorite_restaurant
        self.reviews.order(:star_rating).first
    end

    def add_review(restaurant, rating)
        Review.create(rating, restaurant_id: restaurant, customer_id: self)
    end

    def delete_reviews(restaurant)
        binding.pry
    end
end