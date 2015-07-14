class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
    @cards = []

    ranks = %w{Ace 2 3 4 5 6 7 8 9 10 Jack Queen King}
    suits = %w{Spades Hearts Diamonds Clubs}

      suits.each do |suit|
          ranks.size.times do |i|
            @cards << Card.new( ranks[i], suit )
          end
      end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    return @cards.shift 
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end

deck = Deck.new
puts ">>>>>>>>>>>>>>>> before shuffle"
deck.output
deck.shuffle
puts ">>>>>>>>>>>>>>>> after shuffle"
deck.output
puts ">>>>>>>>>>>>>>>> deal 7 cards"
7.times {
card = deck.deal
card.output_card }