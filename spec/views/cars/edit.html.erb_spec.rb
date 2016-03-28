require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :name => "MyString",
      :number => "MyString",
      :pts => "MyString",
      :pts_date => "MyString"
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input#car_name[name=?]", "car[name]"

      assert_select "input#car_number[name=?]", "car[number]"

      assert_select "input#car_pts[name=?]", "car[pts]"

      assert_select "input#car_pts_date[name=?]", "car[pts_date]"
    end
  end
end
