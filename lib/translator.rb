require 'pry'

class Translator
  attr_reader :dictionary

  def initialize
    @dictionary = {"a" => ".-",
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

  def downcase_and_split_words(word)
    word.downcase.split(//)
  end

  def translate_eng_morse_code(phase)
    @dictionary[pharse]

    downcase_and_split_words = downcase_and_split_words
  end


=begin
downcase word
split word
replace letter with morse code
then join word

=end





    morse_code = String.new

    translated_word.each do |char|
      if @dictionary.key?(char)
        morse_code << @dictionary[char]
      end
        morse_code
    end
  end
end



  end
translator = Translator.new
# p translator.downcase_and_split_words("George")
p translator.eng_to_morse_code("George")
