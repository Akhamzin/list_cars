class Car < ActiveRecord::Base
	validates :name, presence: true, format: { with: /\A[a-z" "A-Z0-9А-Яа-я]+\z/ }
	validates :number, presence: true, uniqueness: true
	validates :pts, presence: true, uniqueness: true
	validates :pts_date, presence: true

	has_many :car_images, :dependent => :destroy
	accepts_nested_attributes_for :car_images
end
