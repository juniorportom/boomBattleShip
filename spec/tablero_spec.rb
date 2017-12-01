require './lib/tablero'

#cargar tablero 2X2
describe Tablero do
it 'inicia S_-B_' do
	tablero = Tablero.new
    expect(tablero.cargar).to eq 'S B '

end
end
