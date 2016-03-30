include ActionDispatch::TestProcess

FactoryGirl.define do
	factory :car do
		
		name "Toyota Corolla"
		number "A111AA123"
		pts "11AA123456"
		#car_images
	end

	factory :car_images do
		
		image_name "Corolla"
		photo { Rack::Test::UploadedFile.new(Rails.root.join('spec/1.jpeg'), 'image/jpeg') }

		after_create do |car_images, proxy|
     		proxy.photo.close
     	end
	end

end