

class JadenCase
    
    def self.to_array_of_words (sentence)
        sentence.split()
    end

    def self.capitalize_words! (sentence)
        to_array_of_words(sentence).each { |word| word.capitalize!}
    end

    def self.make_it_in_jaden_case (sentence)
        capitalize_words!(sentence).join(" ")
    end
end