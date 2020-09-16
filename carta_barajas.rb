class Carta
    attr_accessor :numero
    attr_accessor :pinta

    def initialize()
        @numero = rand(1..13)
        @pinta = ['C', 'D', 'E', 'T'].sample
        
    end
end

cards = []

5.times do
cards.push(Carta.new)
end

print cards         


class Baraja
    attr_accessor :cartas
    cartas = []
    
    def initialize(cartas)

        @cartas = cartas
    end

    def barajar
        @cartas.shuffle
    end

    def sacar
    @cartas.pop
    end 

    def repartir_mano
        @cartas.pop(5)
    end
end