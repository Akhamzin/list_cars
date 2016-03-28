require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :name => "Name",
      :number => "Number",
      :pts => "Pts",
      :pts_date => "Pts Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Pts/)
    expect(rendered).to match(/Pts Date/)
  end
end
