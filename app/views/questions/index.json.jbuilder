json.array!(@questions) do |question|
  json.extract! question, :question_number, :name, :label, :input_type
  json.url question_url(question, format: :json)
  json.options question.options, :answer, :weight
end