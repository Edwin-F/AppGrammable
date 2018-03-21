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
  attr_accessor :cards
  def initialize
    # 2 to 10 cards (9 total)
    #ace, jack, queen, king
    #clubs, diamonds, hearts, spades
    ranks = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9 , 10, "Jack", "Queen", "King"]
    suits = [:clubs, :diamonds, :hearts, :spades]
    @cards = []
    ranks.each do |rank|
      suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
    #@cards << Card.new(10, :spades)
    #@cards << Card.new(9, :daimonds)
  end
  
  def shuffle
    @cards.shuffle!
  end
  
  def output
    @cards.each do |card|
      card.output_card
    end
  end
  def deal
    @cards.shift
  end
end

class Player
  attr_accessor :hand, :deck, :value
  
  def initialize
    self.hand = []
    self.value = 0
  end

  def hit(deck)
      hand << deck.deal
      puts "my hand is :"
      p hand
  end
  #add logic for value
end

deck = Deck.new
#deck.output
deck.shuffle
puts " "
puts " "
p deck.cards.count
player1 = Player.new
player1.hit(deck)
player1.hit(deck)
player1.hit(deck)
player1.hit(deck)
p deck.cards.count
