require 'rails_helper'
require 'spec_helper'

RSpec.describe CarImage, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
 

it { should respond_to(:car_id) }
 it { should have_attached_file(:photo) }
 it { validate_attachment_size(:photo).less_than(5.megabytes) }
 it { validate_attachment_content_type(:photo).allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
  it { should be_valid }

end
