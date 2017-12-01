require './lib/tablero'

#cargar tablero 2X2
describe Tablero do
	it 'inicia S_-B_' do
		tablero = Tablero.new
	    expect(tablero.cargar).to eq 'S B '

	end

	it 'Si ataco en la posicion 1,1 Gano' do
		tablero = Tablero.new
	    expect(tablero.atacar 1, 1).to eq 'Gano'
	end

	it 'Si ataco en la posicion 2,1 Perdio' do
		tablero = Tablero.new
	    expect(tablero.atacar 2, 1).to eq 'Perdio'
	end

end


#
#Si ataco en la posicion 2,1 pierdo
#Si ataco en la posicion 1,2 nada


