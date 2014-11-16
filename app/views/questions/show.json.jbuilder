json.extract! @question, :question_number, :name, :label, :input_type
json.options @question.options, :answer, :weight

