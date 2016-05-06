class Pobladores
  def initialize(nombre,simbolo,codigo,alimenta,probabilidad)
    @nombre = nombre
    @simbolo = simbolo
    @codigo = codigo
    @alimenta = alimenta
    @probabilidad = probabilidad
  end
  attr_accessor:nombre
  attr_accessor:simbolo
  attr_accessor:codigo
  attr_reader:alimenta
  attr_reader:probabilidad
end