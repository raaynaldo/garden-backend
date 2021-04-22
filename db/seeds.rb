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

ray = User.create!(name: "Raynaldo Sustina", uid: "123", email: "raaynaldo@gmail.com", photo_url: "https://ca.slack-edge.com/T01LDUYQA4S-U01L764HZ4N-a689fcca7784-512")
mauro = User.create!(name: "Mauro Dorigo", uid: "1234", email: "mauro.dorigo@gmail.com", photo_url: "https://ca.slack-edge.com/T01LDUYQA4S-U01L764HZ4N-a689fcca7784-512")
puts "User Prompt Done!"

g1 = QuestionPrompt.create!(question: "Describe your favorite moment of the day. What was it and why is it your favorite moment? When we focus on small moments, we recognize the importance of each day.  Think about the day you are having now.  What was special to you, what stands out?", topic: QuestionPrompt.topics[:gratitude])
g2 = QuestionPrompt.create!(question: "Describe your favorite person and list all of that person's good qualities. Write about one or more of those qualities.  You can write one journal entry for each quality you like about that person.  This writing prompt pushes you to not take people for granted.  It helps you appreciate those around you even more.", topic: QuestionPrompt.topics[:gratitude])
g3 = QuestionPrompt.create!(question: "Write about a random act of kindess from another person. These could be acts of kindness from a friend, family member, or even a stranger. Don’t just consider grand actions, but these might be small things too, such as a person letting you go ahead of them in a waiting line.", topic: QuestionPrompt.topics[:gratitude])
g4 = QuestionPrompt.create!(question: "Write about something the cheers you up when you feel down. Is there a person, animal, thing or something you do that cheers you up on a bad day?  Describe it in your journal, and write about why or how it makes you feel better.", topic: QuestionPrompt.topics[:gratitude])
g5 = QuestionPrompt.create!(question: "List 10 things you are grateful for today.", topic: QuestionPrompt.topics[:gratitude])

ip1 = QuestionPrompt.create!(question: "5 things I love about myself are...", topic: QuestionPrompt.topics[:inner_peace])
ip2 = QuestionPrompt.create!(question: "These are the things I feel hopeful about...", topic: QuestionPrompt.topics[:inner_peace])
ip3 = QuestionPrompt.create!(question: "One of my favorite memories is...", topic: QuestionPrompt.topics[:inner_peace])
ip4 = QuestionPrompt.create!(question: "I give myself permission to not know...", topic: QuestionPrompt.topics[:inner_peace])
ip5 = QuestionPrompt.create!(question: "I give myself permission to feel this way...", topic: QuestionPrompt.topics[:inner_peace])

r1 = QuestionPrompt.create!(question: "What are three things I admire most about my spouse/partner/significant other?", topic: QuestionPrompt.topics[:relationships])
r2 = QuestionPrompt.create!(question: "How can I bring more love into my relationships?", topic: QuestionPrompt.topics[:relationships])
r3 = QuestionPrompt.create!(question: "Who do I rely on most for support and advice?", topic: QuestionPrompt.topics[:relationships])
r4 = QuestionPrompt.create!(question: "Who drives me crazy, but I love anyway?", topic: QuestionPrompt.topics[:relationships])
r5 = QuestionPrompt.create!(question: "Describe the last piece of advice I received that was meaningful.", topic: QuestionPrompt.topics[:relationships])

puts "Question Prompt Done!"

puts g1.id
AnswerPrompt.create!(question_prompt_id: g1.id, user_id: ray.id, answer: "good")
AnswerPrompt.create!(question_prompt_id: g2.id, user_id: ray.id, answer: "Ray")
AnswerPrompt.create!(question_prompt_id: g3.id, user_id: ray.id, answer: "3")

AnswerPrompt.create!(question_prompt_id: ip1.id, user_id: mauro.id, answer: "Very Good")
AnswerPrompt.create!(question_prompt_id: ip2.id, user_id: mauro.id, answer: "Mauro")
AnswerPrompt.create!(question_prompt_id: ip3.id, user_id: mauro.id, answer: "3")
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
