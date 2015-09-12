require 'rails_helper'

describe User do 

	#it 'should do something' do
	#	expect(true).to eq false
	#end

	describe 'gender enum' do 
		let(:user) {User.new(name: 'Smaple', last_name: 'same')}

		it 'retorna masculino si gender es 0' do 
			user.gender = 0
			expect(user.gender).to eq 'masculino'
		end
		it 'retorna femenino si gender es 1' do 
			user.gender = 1
			expect(user.gender).to eq 'femenino'
		end
		it 'retorna indefinido si gender es 2' do 
			user.gender = 2
			expect(user.gender).to eq 'indefinido'
		end

	end
    
    describe '#authenticate' do 
    	before :each do 
    	  @user = User.create(name: 'sample', last_name: 'same', password: '1234', email: 'sample@email.com')
    	end
    	it 'retorna false si el email es malo' do 
    		#User.create(name: 'sample', lastname: 'same', password: '1234', email: 'samaple@email.com')
    		expect(User.authenticate('sample@email.com', '1234')).to eq false
    	end
    	it 'retorna nil si la clave es mala' do 
    		#User.create(name: 'sample', lastname: 'same', password: '1234', email: 'samaple@email.com')
    		expect(User.authenticate('sample@email.com', '12345')).to eq false
    	end
    	it 'retorna un usuario si la clave y suario es correcto' do 
    		user = User.authenticate('sample@email.com', '1234')
    		expect(user).to an_instance_of user
    		expect(user.name).to eq @user.name
    	end	
    end

end