class Tablero

	def initialize
		@tablero =[ ["S"," "],["B"," "]]
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
end