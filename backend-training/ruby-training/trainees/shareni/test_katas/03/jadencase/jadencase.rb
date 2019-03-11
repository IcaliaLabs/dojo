class JadenCase
    def convert(raw_sentence)
        words = raw_sentence.split()
        words.each { |word| word.capitalize! }
        words.join(" ")
    end
end