json.array!(@options) do |option|
  json.extract! option, :id, :answer, :question_id, :weight
  json.url option_url(option, format: :json)
end
