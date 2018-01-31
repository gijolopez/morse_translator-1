require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < Minitest::Test

  def test_if_translator_exist
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_eng_to_morse_code

  end
end
