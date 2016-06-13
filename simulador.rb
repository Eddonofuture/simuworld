require_relative  'pobladores.rb'
require_relative  'array_grid.rb'

class Simular
  def initialize(pobladores,grid)
    @grid = grid
    @pobladores = pobladores
  end

  #Grid llega como [0][0],[1][1],[2][2]
  #pobladores llega como arreglo [1,2,3,4,5...]
  def simular_mov

    for i in 0..$pobladores.length do
      #random = rand(0..4)
      case rand(0..4)
      when 0

        #no movimiento
      when 1
        #movimiento izquierda
        if (poblador[i].posicionx - poblador[i].movimiento >= 0)
          realizar_movimiento()
        end

      when 2
        #movimiento derecha
        if (poblador[i].posicionx + poblador[i].movimiento <= grid.ancho)
          realizar_movimiento()
        end
      when 3
        #movimiento arriba
        if (poblador[i].posiciony - poblador[i].movimiento >= 0)
          realizar_movimiento()
        end
      when 4
        #movimiento abajo
        if (poblador[i].posicionx + poblador[i].movimiento <= grid.largo)
          realizar_movimiento()
        end

      end

    end

  end

  def realizar_movimiento()
  end

end 