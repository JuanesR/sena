<<<<<<< HEAD
class User < Wapper::Base

	attr_accessor :id, :name, :lastname, :gander,
                  :age, :url, :address, :created_at, :update_at

    def to_json
    	{user: {
    		id: self.id
    		lastname: self.lastname
    		age: self.age
    		address: self.address
    		gender: self.gander
    	}}.to_json
    end
=======
class User < Wrapper::Base

  attr_accessor :id, :name, :lastname, :gender,
                :age, :url, :address, :created_at, :updated_at

  def to_json
    {user: {
        id: self.id,
        name: self.name,
        lastname: self.lastname,
        age: self.age,
        address: self.address,
        gender: self.gender
    }}.to_json
  end
>>>>>>> 2579b836ee454178cffbc724e848f592dc3732ad
end