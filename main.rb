require 'array_grid.rb'
require 'pobladores.rb'
require 'simulador.rb'

$pobladores = []
puts 'Iniciando'
puts

grilla = ArrayGrid.new(10,10)
grilla.llenar_grilla()
grilla.graficar()

puts 'Insertar Pobladores'
puts
for i in 0..(grilla.largo*grilla.ancho) do

  $pobladores[i] = Pobladores.new('Hierba','H',1,0,0.01,0)
  grilla.insertar_pobladores($pobladores[i])

end
grilla.graficar()

#conejo = Pobladores.new('conejo','C',2,1,0.05,0)

#$pobladores.push(conejo)
#grilla.insertar_pobladores(conejo)
#grilla.graficar()

