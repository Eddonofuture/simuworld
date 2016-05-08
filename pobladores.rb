class Pobladores
  def initialize(nombre,simbolo,codigo,alimenta,probabilidad,movimiento)
    @nombre = nombre
    @simbolo = simbolo
    @codigo = codigo
    @alimenta = alimenta
    @probabilidad = probabilidad
    @movimiento = movimiento
    @alimento = 100

  end
  attr_accessor:nombre
  attr_accessor:codigo
  attr_reader:simbolo
  attr_reader:alimenta
  attr_reader:probabilidad
  attr_reader:movimiento
  attr_accessor:contador

  def insertar_grid(largo,ancho)

    for i in 0..(largo*ancho) do

      $pobladores[i] = Pobladores.new('Hierba','H',1,0,0.01,0)
      grilla.insertar_pobladores($pobladores[i])

    end
  end
end