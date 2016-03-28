class Car < ActiveRecord::Base
	validates :name, presence: true, format: { with: /\A[a-z" "A-Z0-9А-Яа-я]+\z/ }
	validates :number, presence: true, uniqueness: true, format: { with: /\A[АaВbЕeКkМmНhОoРpСcТtУyХx]{1}[0-9]{3}[АaВbЕeКkМmНhОoРpСcТtУyХx]{2}[0-9]{2,3}+\z/ }
	validates :pts, presence: true, uniqueness: true, format: { with: /\A[0-9]{2}[АaВbЕeКkМmНhОoРpСcТtУyХx]{2}[0-9]{6}+\z/ }
	validates :pts_date, presence: true

	has_many :car_images, :dependent => :destroy
	accepts_nested_attributes_for :car_images
end
