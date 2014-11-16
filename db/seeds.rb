# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.destroy_all
Option.destroy_all

Question.create(question_number: 1, name:"name", label:"What is your full name?", input_type:"text")
question = Question.create(question_number: 2, name:"skill", label:"What is your strongest skill as a Developer?", input_type:"select")
question.options.create(answer:"Front End", weight:"1")
question.options.create(answer:"Back End", weight:"1")
question.options.create(answer:"Full Stack", weight:"1")
question_one = Question.create(question_number: 3, name:"companies", label:"What type of companies have you worked at?", input_type:"radio")
question_one.options.create(answer:"Startups", weight:"1")
question_one.options.create(answer:"Small and Mid-Size", weight:"1")
question_one.options.create(answer:"Large Enterprises", weight:"1")
