require 'pobladores.rb'
require 'text-table'

class ArrayGrid
  $gridArray
  def initialize(largo,ancho)

    @largo = largo
    @ancho = ancho

    $gridArray = Array.new(@largo,@ancho)
    for i in 0..@largo-1 do

      $gridArray[i] = '-'
      for j in 0..@ancho-1 do

        $gridArray[i][j] = '-'

      end

    end
  end

  attr_reader:largo
  attr_reader:ancho

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

    table = Text::Table.new

    for i in 0..@largo-1 do
      for j in 0..@ancho-1 do

        table.rows << [$gridArray[i][j]]

      end
      table.rows << :separator
    end

    print table
  end

end

