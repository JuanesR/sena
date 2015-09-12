class User < ActiveRecord::Base
<<<<<<< HEAD
 
  has_secure_password

  def self.authenticate(mail, pass)
    user = find_by(email: mail)
    user.present? && user.authenticate(pass)
	end
end
=======
  has_secure_password


  def self.authenticate(mail, pass)
    user = find_by(email: mail)
    user && user.authenticate(pass)
  end

end
>>>>>>> 2579b836ee454178cffbc724e848f592dc3732ad
