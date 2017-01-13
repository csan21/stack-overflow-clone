class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes

  validates :username, presence: true, uniqueness: true

	def password
		@password ||= BCrypt::Password.new(hashed_password)
	end

	def password=(new_password)
		@password = BCrypt::Password.create(new_password)
		self.hashed_password = @password
	end

	def self.authenticate(username, password)
		if self.password == password && self.username == username
    	return User.find_by(username: username)
  	else
    	return false
  	end
	end
end
