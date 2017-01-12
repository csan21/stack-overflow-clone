class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes

 def password
   @password ||= BCrypt::Password.new(hashed_password)
 end
 
 def password=(new_password)
   @password = BCrypt::Password.create(new_password)
   self.hashed_password = @password
 end
 
 def self.authenticate(username, plain_text_password)
  	user = User.find_by(:username => username)
   if user && user.password == plain_text_password
      user
    else
      nil
    end
  end

end
