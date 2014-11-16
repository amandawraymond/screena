require 'rails_helper'

RSpec.describe "questions/show", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :name => "Name",
      :label => "Label",
      :input_type => "Input Type",
      :question_number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Input Type/)
    expect(rendered).to match(/1/)
  end
end
