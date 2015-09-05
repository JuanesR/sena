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
end