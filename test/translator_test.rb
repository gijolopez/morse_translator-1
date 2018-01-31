require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < Minitest::Test

  def test_if_translator_exist
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_can_split_words
    translator = Translator.new

    assert_equal ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"], translator.downcase_and_split_words("Hello World")
  end

  def test_convert_eng_to_morse_code
    translator = Translator.new
    translated_word = translator.downcase_and_split_words

    assert_equal "......-...-..--- .-----.-..-..-..",translated_word.eng_to_morse_code
  end
end
