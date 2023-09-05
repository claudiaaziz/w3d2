class Card
    attr_reader :value 

    def initialize(value, face)
        @value = value
        @face = face
    end

    def hide
        @face = "face-down"
    end

    def reveal
        @face = "face-up"
    end

    def to_s
        @value
    end

    def ==(other_card)
        self.value == other_card.value
    end
end

