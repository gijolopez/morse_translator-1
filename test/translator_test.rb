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

    assert_equal ["h", "e", "l", "l", "o"], translator.downcase_and_split_words("Hello")
  end

end
