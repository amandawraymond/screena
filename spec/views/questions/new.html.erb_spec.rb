require 'rails_helper'

RSpec.describe "questions/new", :type => :view do
  before(:each) do
    assign(:question, Question.new(
      :name => "MyString",
      :label => "MyString",
      :input_type => "MyString",
      :question_number => 1
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_name[name=?]", "question[name]"

      assert_select "input#question_label[name=?]", "question[label]"

      assert_select "input#question_input_type[name=?]", "question[input_type]"

      assert_select "input#question_question_number[name=?]", "question[question_number]"
    end
  end
end
