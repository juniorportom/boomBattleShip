class Tablero

	attr_accessor :tablero

	def initialize
		@tablero =[ 
			["S"," ", "S", " "],
			["B","S", " ", " "],
			[" "," ", "B", "S"],
			[" "," ", " ", "S"],
		]
		@opciones = { 
			"B" => "Perdio", 
			"S" => "", 
			" " => "" }
		@resultados = { 
			"B" => "B", 
			"S" => "S", 
			" " => "X" }

		@cantidadBarcos = 5
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
		@cantidadBarcos -= 1
		if @cantidadBarcos == 0
			"Gano"
		else
			@opciones[@tablero[coordenadax.to_i-1][coordenaday.to_i-1]]
		end
	end

	def resultados coordenadax, coordenaday
		@resultados[@tablero[coordenadax.to_i-1][coordenaday.to_i-1]]
	end

end