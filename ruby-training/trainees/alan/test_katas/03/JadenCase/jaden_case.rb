

class JadenCase

    def self.array_of_capitalized_words(sentence)
        words = sentence.split()
        words.each { |word| word.capitalize!}
    end

    def self.jadenify(sentence)
        array_of_capitalize_words(sentence).join(" ")
    end
end