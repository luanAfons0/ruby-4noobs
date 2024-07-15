require 'minitest/autorun' # aqui nos declaramos o requerimento do minitest que nos instalamos anteriormente
require_relative './add' # aqui nos declaramos outro requerimento mas dessa vez do outro arquivo que nos criamos.

class AddTest < Minitest::Test # aqui criamos uma classe que herda de Minitest::Test
  def test_soma
    assert_equal(4, add(2, 2))
  end
end