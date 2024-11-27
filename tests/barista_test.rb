require "minitest/autorun"
require "./barista"

class TestBarista < Minitest::Test
  
  def test_confirm_order_espresso
    barista = Barista.new

    input = StringIO.new("espresso\n")
    output = StringIO.new

    begin
      $stdin = input
      $stdout = output
      
      barista.place_order
      expected_output = <<~OUTPUT
      Hello! What coffee can I get you?

      Ok Ive got an Espresso coming up

    OUTPUT

      assert_equal expected_output, output.string, "espresso test failed"

    ensure
      $stdin = STDIN
      $stdout = STDOUT
    end
  end
  
end
