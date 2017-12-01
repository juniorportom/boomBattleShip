require './lib/tablero'

#cargar tablero 2X2
describe Tablero do
	it 'inicia S_-B_' do
		tablero = Tablero.new 
	    expect(tablero.cargar).to eq 'S S BS    BS   S'

	end

	it 'Si ataco en la posicion 1,1' do
		tablero = Tablero.new
	    expect(tablero.atacar 1,1).to eq ''
	end

	it 'Si ataco en la posicion 2,1 Perdio' do
		tablero = Tablero.new
	    expect(tablero.atacar 2, 1).to eq 'Perdio'
	end

	it 'Si ataco en la posicion 1,2' do
		tablero = Tablero.new
	    expect(tablero.atacar 1, 2).to eq ''
	end

end


#
#Si ataco en la posicion 2,1 pierdo
#


