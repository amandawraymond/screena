require 'rails_helper'

RSpec.describe "questions/index", :type => :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :name => "Name",
        :label => "Label",
        :input_type => "Input Type",
        :question_number => 1
      ),
      Question.create!(
        :name => "Name",
        :label => "Label",
        :input_type => "Input Type",
        :question_number => 1
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Input Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
