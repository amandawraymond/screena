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
Question.create(question_number: 2, name:"location", label:"What city,State do you currently live in?", input_type:"text")
Question.create(question_number: 3, name:"current job", label:"What is your current job title?", input_type:"text")
Question.create(question_number: 4, name:"years at current", label:"How many years have you been working at your current job?", input_type:"text")
Question.create(question_number: 5, name:"other jobs", label:"What other jobs titles have you had in your career?", input_type:"text")
question_skill = Question.create(question_number: 6, name:"skill", label:"What is your strongest skill as a Product Manager?", input_type:"select")
question_skill.options.create(answer:"Business", weight:"1")
question_skill.options.create(answer:"Technology", weight:"1")
question_skill.options.create(answer:"Design", weight:"1")
question_years = Question.create(question_number: 6, name:"years", label:"How many years have you been working as a Product Manager?", input_type:"select")
question_years.options.create(answer:"0-3", weight:"1")
question_years.options.create(answer:"3-7", weight:"1")
question_years.options.create(answer:"7 and above", weight:"1")
question_companies = Question.create(question_number: 7, name:"companies", label:"What type of companies have you worked at?", input_type:"checkbox")
question_companies.options.create(answer:"Startups", weight:"1")
question_companies.options.create(answer:"Small and Mid-Size", weight:"1")
question_companies.options.create(answer:"Large Enterprises", weight:"1")
question_cycle = Question.create(question_number: 8, name:"life cycle", label:"What stages of the product life cycle do you have experience in?", input_type:"checkbox")
question_cycle.options.create(answer:"Development/Introduction", weight:"1")
question_cycle.options.create(answer:"Growth", weight:"1")
question_cycle.options.create(answer:"Maturity", weight:"1")
question_cycle.options.create(answer:"Decline", weight:"1")
Question.create(question_number: 9, name:"thankyou", label:"Thank you!", input_type:"message")

