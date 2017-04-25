class PigLatinizer

  def piglatinize(word)
    # take off letters before first vowel to end and add "ay"
    # UNLESS start with vowel, only add "way"
    #vowels = ["a","e","i","o","u"]

    vowels = /[aeiou]/

    placeholder = word.split("").take_while { |l|
      vowels.match(l.downcase) == nil }
    word_temp = word.split("")
    placeholder.length.times do (word_temp.shift) end

    word_temp << placeholder

    last_letter = placeholder.length == 0 ? "way" : "ay"
    word_temp.flatten.join() + last_letter

  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    temp = words.collect do |w|
      self.piglatinize(w)
    end
    temp.join(" ")
  end

#     temp = ""
#     vowels = /[aeiou]/
#     words = phrase.split(" ")
#     var = words.collect do |w|
#       if vowels.match(w[0].downcase) == nil
#         temp = w.split("")
#         temp2 = temp.shift
#         temp << (temp2+"ay")
#         temp.join
#       else
#         w + "way"
#       end
#     end
# #    binding.pry
#     var.join(" ")
#   end

end
