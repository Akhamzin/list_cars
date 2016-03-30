require 'rails_helper'
require 'spec_helper'


RSpec.describe "cars/edit", type: :view do
  # before(:each) do
  #   @car = assign(:car, Car.create!(
  #     :name => "MyString",
  #     :number => "MyString",
  #     :pts => "MyString",
  #     :pts_date => "MyString"
  #   ))
  # end

  # it "renders the edit car form" do
  #   render

  #   assert_select "form[action=?][method=?]", car_path(@car), "post" do

  #     assert_select "input#car_name[name=?]", "car[name]"

  #     assert_select "input#car_number[name=?]", "car[number]"

  #     assert_select "input#car_pts[name=?]", "car[pts]"

  #     assert_select "input#car_pts_date[name=?]", "car[pts_date]"
  #   end
  # end
  let!(:car){create(:car)}
  #let!(:car_images){build(:car_images)}
  
  describe "Edit a car" do
    before { visit edit_car_path(car) }

      subject { page }

    
    it { should have_content "Edit a car" }
    it { should have_selector 'label', text: "Car name" }
    it { should have_selector 'label', text: "Car number" }
    it { should have_selector 'label', text: "PTS" }
    it { should have_selector 'label', text: "PTS date" }
    it { should have_field 'Car name'}
    it { should have_field 'Car number'}
    it { should have_field 'PTS'}
    it { should have_button 'Update'}
    it { should have_button 'Back'}
  end
end
