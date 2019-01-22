class JadenCase
    def convert(raw_sentence)
        words = raw_sentence.split()
        words.each { |word| word[0] = word[0].upcase }
        words.join(" ")
    end
end