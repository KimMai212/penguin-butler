# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Penguin.destroy_all
Informations.destroy_all
penguins = [
  {
    name: "Archy",
    picture: '1.jpg'
    },
  {
    name: "Elvis",
    picture: '2.jpg'
    },
  {
    name: "James",
    picture: '3.jpg'
    },
  {
    name: "Rui",
    picture: '4.jpg'
    },
  {
    name: "Mr. Ho",
    picture: '5.jpg'
    },
  {
    name: "King Freddy",
    picture: '6.jpg'
    },
  {
    name: "Baltasar",
    picture: '7.jpg'
    },
  {
    name: "Leon",
    picture: '8.jpg'
    },
  {
    name: "Dion",
    picture: '9.jpg'
    },
  {
    name: "Andy",
    picture: '10.jpg'
    },
  {
    name: "Felizitas",
    picture: '11.jpg'
    },
  {
    name: "Andrea",
    picture: '12.jpg'
    },
  {
    name: "Ena",
    picture: '13.jpg'
    },
  {
    name: "Boris",
    picture: '14.jpg'
    },
  {
    name: "Rich",
    picture: '15.jpg'
  },
  {
    name: "Linh",
    picture: '16.jpg'
    },
  {
    name: "Zora",
    picture: '17.jpg'
    },

  {
    name: "Mrs. Sunshine",
    picture: '20.jpeg'
    },
    {
      name: "Petya",
      picture: '21.jpg'
    },
  {
    name: "Sarah",
    picture: '22.jpg'
    },
  {
    name: "Toni",
    picture: '18.jpg'
  },
  {
    name: "Zuza",
    picture: '19.jpg'
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
    Pen.create!(
        description: desc,
        penguin: created,
        information: information )
    end
}
