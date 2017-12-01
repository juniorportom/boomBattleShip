require './lib/tablero'

#cargar tablero 2X2
describe Tablero do
	it 'inicia S_-B_' do
		tablero = Tablero.new
	    expect(tablero.cargar).to eq 'S B '

	end

	it 'Si ataco en la posicion 0,0 Gano' do
		tablero = Tablero.new
	    expect(tablero.atacar 0,0).to eq 'Gano'
	end

	it 'Si ataco en la posicion 1,0 Perdio' do
		tablero = Tablero.new
	    expect(tablero.atacar 1, 0).to eq 'Perdio'
	end

	it 'Si ataco en la posicion 0,1 nada' do
		tablero = Tablero.new
	    expect(tablero.atacar 0, 1).to eq 'Nada'
	end

end


#
#Si ataco en la posicion 2,1 pierdo
#


