require 'rails_helper'
require 'spec_helper'

RSpec.describe "cars/index", type: :view do
  # before(:each) do
  #   assign(:cars, [
  #     Car.create!(
  #       :name => "Name",
  #       :number => "Number",
  #       :pts => "Pts",
  #       :pts_date => "Pts Date"
  #     ),
  #     Car.create!(
  #       :name => "Name",
  #       :number => "Number",
  #       :pts => "Pts",
  #       :pts_date => "Pts Date"
  #     )
  #   ])
  # end

  # it "renders a list of cars" do
  #   render
  #   assert_select "tr>td", :text => "Name".to_s, :count => 2
  #   assert_select "tr>td", :text => "Number".to_s, :count => 2
  #   assert_select "tr>td", :text => "Pts".to_s, :count => 2
  #   assert_select "tr>td", :text => "Pts Date".to_s, :count => 2
  # end
describe "Index page" do
  before { visit root_path }


  it "should have content 'Car list'" do
    expect(page).to have_content('Car list')
  end

  it "should have table" do
    expect(page).to have_selector('table')
  end

  it "should have table with more then 6 columns " do
    expect(page).to have_selector('th', :minimum => 6)
  end

  it "should have table with body " do
    expect(page).to have_selector('tbody')
  end

  it "should have table with header " do
    expect(page).to have_selector('thead')
  end

  it "should have 'New' button " do
    expect(page).to have_button('New')
  end

  it "should have 'Total' line " do
    expect(page).to have_selector('th')
  end


end

end
