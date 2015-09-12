require 'rails_helper'

describe Decorator::Base do 

  let(:user) {User.create(name: 'Some', last_name: 'Simple', email: 'a@email.com', password: '1234')}

	describe '#new' do 
      it 'asigna el usuario en @objeto' do
      user_decorator = UserDecorator.new(user)
      expect(user_decorator.object).to eq user 
      end

      it 'cresa un metodo con el nombre de la clase de @' do 
      	user_decorator = UserDecorator.new(user)
      	expect(user_decorator.methods).to include(:user)
      end
	end

	describe '#object' do
		it 'retorna @objeto' do
			user_decorator = UserDecorator.new(user)
			expect(user_decorator.object).to eq user
		end
	end

	describe '#decorate_collection' do 
		it 'recibe un arreglo de objetos y retorna cada un' do
			dec1 = UserDecorator.decorate(user)
			dec2 = UserDecorator.decorate(user)
			expect(user_decorator.decorate_collection([user, user])).to eq [dec1,dec2]
		end
	end

	describe '#decorate' do 
		it 'retorna el objeto decorado.' do 
		expect(UserDecorator(user)).to and_instance_of(UserDecorator)
	    end
	end

	describe '#method_missing'
end