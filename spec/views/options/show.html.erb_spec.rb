require 'rails_helper'

RSpec.describe "options/show", :type => :view do
  before(:each) do
    @option = assign(:option, Option.create!(
      :answer => "Answer",
      :question_id => 1,
      :weight => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Answer/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
