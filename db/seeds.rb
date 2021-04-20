# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AnswerPrompt.destroy_all
Goal.destroy_all
QuestionPrompt.destroy_all
User.destroy_all

ray = User.create!(first_name: "Raynaldo", last_name: "Sutisna", username: "RaynaldoSutisna", photo: "https://ca.slack-edge.com/T01LDUYQA4S-U01L764HZ4N-a689fcca7784-512")
mauro = User.create!(first_name: "Mauro", last_name: "Dorigo", username: "MauroDorigo", photo: "https://ca.slack-edge.com/T01LDUYQA4S-U01U65LQVJN-3e9932e12acc-512")
puts "User Prompt Done!"

q1 = QuestionPrompt.create!(question: "How are you?", topic: QuestionPrompt.topics[:understanding])
q2 = QuestionPrompt.create!(question: "What's your name?", topic: QuestionPrompt.topics[:responsibility])
q3 = QuestionPrompt.create!(question: "1 + 2 = ?", topic: QuestionPrompt.topics[:space_to_grow])
puts "Question Prompt Done!"

puts q1.id
AnswerPrompt.create!(question_prompt_id: q1.id, user_id: ray.id, answer: "good")
AnswerPrompt.create!(question_prompt_id: q2.id, user_id: ray.id, answer: "Ray")
AnswerPrompt.create!(question_prompt_id: q3.id, user_id: ray.id, answer: "3")

AnswerPrompt.create!(question_prompt_id: q1.id, user_id: mauro.id, answer: "Very Good")
AnswerPrompt.create!(question_prompt_id: q2.id, user_id: mauro.id, answer: "Mauro")
AnswerPrompt.create!(question_prompt_id: q3.id, user_id: mauro.id, answer: "3")
puts "Answer Prompt Done!"

Goal.create!(user_id: ray.id, task: "task 1", is_done: true)
Goal.create!(user_id: ray.id, task: "task 2", is_done: true)
Goal.create!(user_id: ray.id, task: "task 3", is_done: false)
Goal.create!(user_id: ray.id, task: "task 4", is_done: true)

Goal.create!(user_id: mauro.id, task: "task 1", is_done: true)
Goal.create!(user_id: mauro.id, task: "task 2", is_done: true)
Goal.create!(user_id: mauro.id, task: "task 3", is_done: false)
Goal.create!(user_id: mauro.id, task: "task 4", is_done: true)
puts "Goal Done!"
