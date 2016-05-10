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

end