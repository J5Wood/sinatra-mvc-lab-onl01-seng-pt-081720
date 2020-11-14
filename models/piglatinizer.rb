class PigLatinizer

    def piglatinize(phrase)
        latin_phrase = []
        phrase.split.each do |word|
            if word[0] =~ /[aeiouAEIOU]/
                latin_word = word + "way"
                latin_phrase << latin_word
            else
                vowels = ["a","e", "i", "o", "u"]
                letter_counter = []
                word.split("").each do |letter|
                    break if vowels.include?(letter)
                    letter_counter << letter
                end
                count = letter_counter.count
                beginning_of_word = word[0,count]
                word[0,count] = ''
                latin_word = word + beginning_of_word + "ay"
                latin_phrase << latin_word
            end
        end
        latin_phrase.join(" ")
    end

end