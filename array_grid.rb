class ArrayGrid
  
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
    puts 'iniciando'
    gridArray = Array.new(@largo,@ancho)
    for i in 0..@largo-1 do
      for j in 0..@ancho-1 do
        
        gridArray[i][j] = '-'
        print gridArray[i][j]
      end
    end
  end
  
  def graficar
    puts 'iniciando'
       grilla = Array.new(@largo,@ancho)
       for i in 0..@largo-1 do
         for j in 0..@ancho-1 do
           
           print '-'
           
         end
         puts
         
       end
  end

  def llenar

  end

end

grilla = ArrayGrid.new(10,10)
grilla.llenar_grilla()
