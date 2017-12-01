class Tablero

	def initialize
		@tablero =[ ["S"," "],["B"," "]]
		@opciones = { 
			"B" => "Perdio", 
			"S" => "Gano", 
			" " => "Nada" }
	end

	def cargar 
		imp = ""
		@tablero.each do |fila|
			fila.each do |celda|
				imp = imp + celda
			end			
		end
		imp
	end

	def atacar coordenadax, coordenaday
		@opciones[@tablero[coordenadax][coordenaday]]

	end
end