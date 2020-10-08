# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Word.destroy_all
Definition.destroy_all
puts 'seeds deleted'

user_a = User.create(name: "Gabriel", password: "password")
user_b = User.create(name: "Robert", password: "password")
user_c = User.create(name: "Ethan", password: "password")
user_d = User.create(name: "Rei", password: "password")


word_a = Word.create(spelling: "brick")
word_b = Word.create(spelling: "green")
word_c = Word.create(spelling: "bang bang")

 
definition_a = Definition.create(user: user_a, word: word_a, meaning: "ten thousand U.S. dollars", example: "He lost a brick when he was fleeced investing in that pump and dump.")
definition_b = Definition.create(user: user_a, word: word_b, meaning: "money", example: "You got to spend the green to make some green.")
definition_c = Definition.create(user: user_a, word: word_c, meaning: "written as !!, it is a software commmand to turn any expression into it's boolean.", example: "bang bang nil is false")
definition_d = Definition.create(user: user_b, word: word_a, meaning: "cold in temperature", example: "Ithaca's weather is rather brick during the winter, which begins late September.")
definition_e = Definition.create(user: user_b, word: word_b, meaning: "the golf course", example: "You hit some nice links today on the green.")
definition_f = Definition.create(user: user_b, word: word_c, meaning: "A spicy Thai dish consisting on chicken and vegitables", example: "This best bang bang I've ever ordered was in Teaneck, NJ.")
definition_g = Definition.create(user: user_c, word: word_a, meaning: "electronic device rendered useless", example: "The Iphone's newest update made it a brick.")
definition_h = Definition.create(user: user_c, word: word_b, meaning: "leafy vegetables", example: "When making my smoothies, I try to add greens like spinach or kale.")
definition_i = Definition.create(user: user_c, word: word_c , meaning: "to clap iron, or fire a gun", example: "Dropped in like a ninja, and bang bang, his wig was split")
definition_j = Definition.create(user: user_d, word: word_b, meaning: "still learning, a neophyte, a novice", example: "these mod 1 first weekers are pretty green")
