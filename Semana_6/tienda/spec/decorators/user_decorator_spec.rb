require 'rails_helper'

describe UserDecorator do 
 
 let(:user) { User.create(name: 'Some', last_name: 'Sample', email: 'a@email.com', password: '1234')}

 let(:user_decorator) {UserDecorator.new(user)}

 describe '#nombre_completo' do 
 	it 'retorna nombre y apellido concatenados' do
 	expect(user_decorator.nombre_completo).to eq 'SomeSample'
	end
 end

 describe 'identification_type' do
    it 'retorna arreglo con los identification_types en formato legible' do 
   ary = [
   	['Cedula ciudadania', 'cedula_ciudadania'],
   	['Tarjeta de identificacion', 'tarjeta_de_identificacion'],
   	['Cedula de extranjeria', 'cedula_extranjeria'],
   	['Pasaporte', 'pasaporte']
   ]
   expect(user_decorator.identification_types).to eq ary
   end
 end
 describe 'gender'




end
