require 'pobladores.rb'

class ArrayGrid
  $gridArray
  def initialize(largo,ancho)

    @largo = largo
    @ancho = ancho

  end

  def getLargo
    return @largo
  end

  def getAncho
    return @ancho
  end

  def llenar_grilla

    $gridArray = Array.new(@largo,@ancho)
    for i in 0..@largo-1 do

      $gridArray[i] = '-'
      for j in 0..@ancho-1 do

        $gridArray[i][j] = '-'

      end

    end

  end

  def graficar

    for i in 0..@largo-1 do
      for j in 0..@ancho-1 do

        print $gridArray[i][j]

      end
      puts

    end
    puts
  end

  def insertar_pobladores(poblador)

    if(poblador.probabilidad <= rand(0.1))
      for i in 0..@largo-1 do

        $gridArray[i] = poblador.simbolo()
        for j in 0..@ancho-1 do

          $gridArray[i][j] = poblador.simbolo()

        end

      end
    end

  end

end

