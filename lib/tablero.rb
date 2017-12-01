class Tablero

	attr_accessor :tablero

	def initialize
		@tablero =[ ["S"," "],["B"," "]]
		@opciones = { 
			"B" => "Perdio", 
			"S" => "Gano", 
			" " => "Nada" }
		@resultados = { 
			"B" => "B", 
			"S" => "S", 
			" " => "X" }
	end

	def cargar 
		imp = ""
		@tablero.each do |fila|
			fila.each do |celda|
				imp = imp + celda
			end			
		end		
	end

	def atacar coordenadax, coordenaday
		@opciones[@tablero[coordenadax.to_i-1][coordenaday.to_i-1]]
	end

	def resultados coordenadax, coordenaday
		@resultados[@tablero[coordenadax.to_i-1][coordenaday.to_i-1]]
	end
end