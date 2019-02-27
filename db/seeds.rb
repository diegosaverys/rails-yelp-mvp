# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars', }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'Cleaning database...'
Review.destroy_all

puts 'Creating reviews...'
reviews_attributes = [
  {
    content: "Semi bad",
    rating: 2,
    restaurant_id: 3
  },
  { content: "Perfectly",
    rating: 2,
    restaurant_id: 2
  },
  { content: "Pretty Damn good",
    rating: 5,
    restaurant_id: 4
  },
  { content: "I would say average",
    rating: 3,
    restaurant_id: 1
  },
  { content: "More bad than good",
    rating: 2,
    restaurant_id: 5
  }
]

Review.create!(reviews_attributes)
puts "Finished!"
