require 'array_grid.rb'
require 'pobladores.rb'
require 'simulador.rb'

$pobladores = []
puts 'Iniciando'
puts

grilla = ArrayGrid.new(10,10)
grilla.llenar_grilla()

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