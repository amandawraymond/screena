require 'rails_helper'

RSpec.describe "options/new", :type => :view do
  before(:each) do
    assign(:option, Option.new(
      :answer => "MyString",
      :question_id => 1,
      :weight => 1
    ))
  end

  it "renders new option form" do
    render

    assert_select "form[action=?][method=?]", options_path, "post" do

      assert_select "input#option_answer[name=?]", "option[answer]"

      assert_select "input#option_question_id[name=?]", "option[question_id]"

      assert_select "input#option_weight[name=?]", "option[weight]"
    end
  end
end
