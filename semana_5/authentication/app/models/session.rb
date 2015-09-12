class Session
<<<<<<< HEAD

	include ActiveModel::Model

	attr_accessor :email, :password

	validates :email, presence: true
	validates :password, presence: true
=======
  include ActiveModel::Model

  attr_accessor :email, :password

  validates :email, presence: true
  validates :password, presence: true
>>>>>>> 2579b836ee454178cffbc724e848f592dc3732ad
end