class PigLatinizer
    def piglatinize_word(word)
      vowels = ['a','e','i','o','u']
      consonants = ("a".."z").to_a.delete_if{|l| vowels.include?(l)}
      if vowels.include?(word[0].downcase)
        word << "way"
      else
        word = word.split('')
        while consonants.include?(word[0].downcase)
          l = word.shift
          word << l
        end
        word.join('') << 'ay'
      end
    end
  
    def piglatinize(string)
      string.split.collect{|word| piglatinize_word(word)}.join(" ")
    end
end
