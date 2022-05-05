class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def reviews
        self.reviews.all
    end

    def customers
        self.customers
    end

    def fanciest
        self.all.order(:price).last
    end

    def all_reviews
        array =[]
        self.all.map do |e|
            array.push("Review for #{self.name} by #{self.customers.full_name}: #{self.reviews.star_rating} stars.")
    end
end