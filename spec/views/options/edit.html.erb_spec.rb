require 'rails_helper'

RSpec.describe "options/edit", :type => :view do
  before(:each) do
    @option = assign(:option, Option.create!(
      :answer => "MyString",
      :question_id => 1,
      :weight => 1
    ))
  end

  it "renders the edit option form" do
    render

    assert_select "form[action=?][method=?]", option_path(@option), "post" do

      assert_select "input#option_answer[name=?]", "option[answer]"

      assert_select "input#option_question_id[name=?]", "option[question_id]"

      assert_select "input#option_weight[name=?]", "option[weight]"
    end
  end
end
