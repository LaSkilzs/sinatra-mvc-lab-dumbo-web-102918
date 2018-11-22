require 'pry'

class PigLatinizer

  def piglatinize(arg)
    vowels = ["a", "e", "i", "o", "u"]
    phrase = arg.split
    result = []
    temp = ""

    phrase.each do |string|
      string.each_char.with_index do |letter, index|
        if vowels.include?(letter.downcase) && index == 0
          if phrase.size == 1 && letter != "u"
            result << string.capitalize + "way"
            break
          else
            result << string.downcase + "way"
            break
          end
        elsif !vowels.include?(letter.downcase)
           temp << letter.downcase
        elsif vowels.include?(letter.downcase)
          result << string[index..-1].downcase + temp + "ay"
          temp = ""
          break
        end
      end
    end
       result.join(" ")
   end

end
