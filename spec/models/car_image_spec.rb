require 'rails_helper'
require 'spec_helper'

RSpec.describe CarImage, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @car_image = CarImage.new( image_name: "1.jpeg" )
    @car_image.photo = File.open("app/assets/images/1.jpeg")
  end

  subject { @car_image }

it { should respond_to(:car_id) }
#it { should have_attached_file(:photo) }
 # it { should validates_attachment_presence(:photo) }
  it { should be_valid }

end
