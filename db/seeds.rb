# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Penguin.destroy_all
Ingredient.destroy_all
penguins = [
  {
    name: "Archy",
    picture: '1.jpeg'
    },
  {
    name: "Elvis",
    picture: '2.jpeg'
    },
  {
    name: "James",
    picture: '3.jpeg'
    },
  {
    name: "Rui",
    picture: '4.jpeg'
    },
  {
    name: "Mr. Ho",
    picture: '5.jpeg'
    },
  {
    name: "King Freddy",
    picture: '6.jpeg'
    },
  {
    name: "Baltasar",
    picture: '29.jpeg'
    },
  {
    name: "Leon",
    picture: '32.jpeg'
    },
  {
    name: "Dion",
    picture: '9.jpeg'
    },
  {
    name: "Andy",
    picture: '10.jpeg'
    },
  {
    name: "Felizitas",
    picture: '11.jpeg'
    },
  {
    name: "Andrea",
    picture: '12.jpeg'
    },
  {
    name: "Ena",
    picture: '13.jpeg'
    },
  {
    name: "Boris",
    picture: '26.jpeg'
    },
  {
    name: "Rich",
    picture: '15.jpeg'
  },
  {
    name: "Linh",
    picture: '16.jpeg'
    },
  {
    name: "Zora",
    picture: '17.jpeg'
    },
  {
    name: "Meggie",
    picture: '18.jpeg'
    },
    {
    name: "Marge",
    picture: '19.jpeg'
    },
    {
    name: "Mrs. Sunshine",
    picture: '20.jpeg'
    },
    {
      name: "Petya",
      picture: '21.jpeg'
    },
  {
    name: "Sarah",
    picture: '22.jpeg'
    },
  {
    name: "Toni",
    picture: '23.jpeg'
  },
  {
    name: "Zuza",
    picture: '24.jpeg'
  }
]
informations = ["strong", "tall", "nice", "shy", "drug addicted", "alcoholic", "smoker", "lazy", "loud", "politly", "gay", "pornstar"]
informations.each { |information| Informations.create(name: information) }
penguins.each { |penguin|
    created = Penguin.create(penguin)
    20.times do |n|
      content = Faker::Butler.review
      title = ["Excellent", "Good", "Average", "The best", "Great", "Lazy"].sample
      rating = rand(1..5)
      Review.create!(
        title: title,
        content: content,
        rating: rating,
        penguin: created)
    end

    20.times do |n|
      years_of_experience = Faker::Butler.review
      rating = rand (1..10)
      Years.create!(
        years_of_experience: years_of_experience)
    end

    20.times do |n|
      academic_grade = ["Butler", "PhD", "Bachlor of Helping", "Dr. help. serve.", "Sir", "Master of Desaster"]cr
      Grade.create!(
      academic_grade: academic_grade)
    end

    3.times do |n|
      desc = ["is a little bit", "thinks he/she is", "wishes to be ","could be", "want to be"].sample
      information = Informations.all.sample
      Dose.create!(
        description: desc,
        penguin: created,
        information: information )
    end
}
