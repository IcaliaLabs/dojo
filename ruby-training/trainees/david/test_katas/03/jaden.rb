class Jaden
    def self.to_jaden(text)
        text.split.map(&:capitalize).join(' ')
    end
end