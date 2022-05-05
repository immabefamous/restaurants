# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all
Review.destroy_all

puts "Creating restaurants..."
shack = Restaurant.create(name: "Karen's Lobster Shack", price: 1)
bistro = Restaurant.create(name: "Sanjay's Lobster Bistro", price: 2)
palace = Restaurant.create(name: "Kiki's Lobster Palace", price: 3)

puts "Creating customers..."
baby_spice = Customer.create(first_name: "Emma", last_name: "Bunton")
ginger_spice = Customer.create(first_name: "Geri", last_name: "Halliwell")
scary_spice = Customer.create(first_name: "Melanie", last_name: "Brown")
sporty_spice = Customer.create(first_name: "Melanie", last_name: "Chisholm")
posh_spice = Customer.create(first_name: "Victoria", last_name: "Addams")

puts "Creating reviews..."
# ********************************************************************
# * TODO: create reviews! Remember, a review belongs to a restaurant *
# * and a review belongs to a customer.                              *
# ********************************************************************
# Create reviews Here

s1 = Review.create(star_rating: 1, restaurant_id: shack.id, customer_id: baby_spice.id)
s2 = Review.create(star_rating: 2, restaurant_id: bistro.id, customer_id: ginger_spice.id)
s3 = Review.create(star_rating: 3, restaurant_id: palace.id, customer_id: scary_spice.id)
s4 = Review.create(star_rating: 4, restaurant_id: shack.id, customer_id: sporty_spice.id)
s5 = Review.create(star_rating: 5, restaurant_id: bistro.id, customer_id: posh_spice.id)
s8 = Review.create(star_rating: 3, restaurant_id: palace.id, customer_id: scary_spice.id)
s6 = Review.create(star_rating: 6, restaurant_id: shack.id, customer_id: baby_spice.id)
s7 = Review.create(star_rating: 7, restaurant_id: bistro.id, customer_id: ginger_spice.id)
s11 = Review.create(star_rating: 8, restaurant_id: palace.id, customer_id: scary_spice.id)
s9 = Review.create(star_rating: 9, restaurant_id: shack.id, customer_id: sporty_spice.id)
s10 = Review.create(star_rating: 10, restaurant_id: bistro.id, customer_id: posh_spice.id)

puts "Seeding done!"