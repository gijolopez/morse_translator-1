require 'pry'

class Translator

  def dictionary
    dictionary = {  "a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  # def downcase(word1)
  #   word1.downcase.split(//)
  # end

  # def split(word2)
  #   downcase(word2).split(//)
  # end

  def eng_to_morse(phrase)
    phrase.chars.map do |letter|
      dictionary[letter.downcase]
    end.join
  end

  def read_from_text_file
    eng_to_morse(File.read("text.txt"))
  end

end

translator = Translator.new
p translator.read_from_text_file
