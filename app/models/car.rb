class Car < ActiveRecord::Base
	validates :name, presence: true, format: { with: /\A[a-z" "A-Z0-9А-Яа-я]+\z/ }
	validates :number, presence: true, uniqueness: true
	validates :pts, presence: true, uniqueness: true
	validates :pts_date, presence: true
end
