require 'rails_helper'

RSpec.describe "options/index", :type => :view do
  before(:each) do
    assign(:options, [
      Option.create!(
        :answer => "Answer",
        :question_id => 1,
        :weight => 2
      ),
      Option.create!(
        :answer => "Answer",
        :question_id => 1,
        :weight => 2
      )
    ])
  end

  it "renders a list of options" do
    render
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
