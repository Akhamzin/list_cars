require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :name => "Name",
        :number => "Number",
        :pts => "Pts",
        :pts_date => "Pts Date"
      ),
      Car.create!(
        :name => "Name",
        :number => "Number",
        :pts => "Pts",
        :pts_date => "Pts Date"
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Pts".to_s, :count => 2
    assert_select "tr>td", :text => "Pts Date".to_s, :count => 2
  end
end
