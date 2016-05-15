require 'pobladores.rb'

class ArrayGrid
  $gridArray
  def initialize(largo,ancho)

    @largo = largo
    @ancho = ancho

  end

  attr_reader:largo
  attr_reader:ancho

  def llenar_grilla

    $gridArray = Array.new(@largo,@ancho)
    for i in 0..@largo-1 do

      $gridArray[i] = '-'
      for j in 0..@ancho-1 do

        $gridArray[i][j] = '-'

      end

    end

  end

  def insertar_pobladores(poblador)

    for i in 0..@largo-1 do

      for j in 0..@ancho-1 do
        num = Random.new
        test = num.rand(1.0)

        if(poblador.probabilidad >= test)
          $gridArray[i][j] = poblador.simbolo()
          poblador.posicionx = i
          poblador.posiciony = j

        end
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

end

