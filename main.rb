require 'array_grid.rb'
require 'simulador.rb'

puts 'iniciando'
puts

grilla = ArrayGrid.new(10,10)
grilla.llenar_grilla()
grilla.graficar()

puts 'Insertar Hierba'
puts
hierba = Pobladores.new(hierba,'H',1,0,0.8)
grilla.insertar_pobladores(hierba)
grilla.graficar()
conejo = Pobladores.new(conejo,'C',2,1,0.2)
#grilla.insertar_pobladores(conejo)


