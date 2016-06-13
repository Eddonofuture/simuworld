require_relative  'array_grid.rb'
require_relative  'pobladores.rb'
require_relative  'simulador.rb'

$pobladores = []
puts 'Iniciando'
puts

#creo la grilla para sustentar el tablero
grilla = ArrayGrid.new(10,10)

puts 'Insertar Pobladores'
puts

def crear_poblador(nombre,simbolo,codigo,alimenta,probabilidad,movimiento,grilla)
  for i in 0..(grilla.largo*grilla.ancho) do

    $pobladores[i] = Pobladores.new(nombre,simbolo,codigo,alimenta,probabilidad,movimiento)
    grilla.insertar_pobladores($pobladores[i])

  end

end

crear_poblador('Hierba','H',1,0,0.05,0,grilla)
crear_poblador('Conejo','C',2,1,0.001,1,grilla)

grilla.graficar()

#simulador = Simular.new($pobladores,grilla)
#simulador.simular_mov()