class PigLatinizer

    def piglatinize(words)
        words_array = words.split(" ")
        pig_array = []

        words_array.each do |word|
            first_char = word[0].downcase
            alpha = ('a'..'z').to_a
            vowels = %w[a e i o u]
            consonants = alpha - vowels

            if vowels.include?(first_char)
                pig_array << word + 'way'
            elsif consonants.include?(first_char) && consonants.include?(word[1]) && consonants.include?(word[2])
                pig_array << word[3..-1] + word[0..2] + 'ay'
            elsif consonants.include?(first_char) && consonants.include?(word[1])
                pig_array << word[2..-1] + word[0..1] + 'ay'
            elsif consonants.include?(first_char)
                pig_array << word[1..-1] + word[0] + 'ay'
            end
        end
        pig_array.join(" ")
    end


end