require 'rails_helper'
require 'spec_helper'

RSpec.describe Car, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @car = Car.new(name: "Toyota Corolla", number: "A123AA116", pts: "11AA123456")
  end

  subject { @car }

  it { should be_valid }

  describe "when name is not present" do
    before { @car.name = "" }
    it { should_not be_valid }
  end

  describe "when number is not present" do
    before { @car.number = "" }
    it { should_not be_valid }
  end

  describe "when number is not valid" do
    before { @car.number = "11111111" }
    it { should_not be_valid }
  end

  describe "when name is too short" do
    before { @car.name = "AV" }
    it { should_not be_valid }
  end

  describe "when number is already taken" do
    before do
      car_with_same_number = @car.dup
      car_with_same_number.save
    end

    it { should_not be_valid }
  end

describe "when pts is not present" do
    before { @car.pts = "" }
    it { should_not be_valid }
  end

  describe "when pts is not valid" do
    before { @car.pts = "11111111" }
    it { should_not be_valid }
  end


  describe "when number is already taken" do
    before do
      car_with_same_pts = @car.dup
      car_with_same_pts.save
    end

    it { should_not be_valid }
  end

end
