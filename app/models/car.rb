class Car < ActiveRecord::Base
	validates :name, presence: true, format: { with: /\A[a-z" "A-Z0-9А-Яа-я]+\z/ }
	validates_length_of :name, :within => 3..50
	validates :number, presence: true, uniqueness: true, format: { with: /\A[ABEKMHOPCTYX]{1}[0-9]{3}[ABEKMHOPCTYX]{2}[0-9]{2,3}+\z/ }
	validates :pts, presence: true, uniqueness: true, format: { with: /\A[0-9]{2}[ABEKMHOPCTYX]{2}[0-9]{6}+\z/ }
	

	has_many :car_images, :dependent => :destroy
	accepts_nested_attributes_for :car_images
end
