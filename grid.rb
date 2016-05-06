class Grid
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

  def graficar
    puts 'iniciando grafico'
    for i in 0..@largo-1 do

      for j in 0..@ancho-1 do
        print '----'
        print ''
      end
      puts ''
      for h in 0..@ancho-1 do

        print '|'+'   '

      end
      puts '|'
    end

  end

  def llenar

  end

end

grilla = Grid.new(10,10)
grilla.graficar
