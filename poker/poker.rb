#encoding: UTF-8
class Poker
  def initialize
    @cards = []
    @player = []
  end

  def generate_cards
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
    colors = ["♠", "♥", "♣", "♦"]
    colors.each do |color|
      numbers.each do |number|
        @cards << (color + " " + number.to_s)
      end
    end
    puts %q(###GENERATE CARDS###)
    puts @cards.join
    puts "\n"
    return @cards
  end

  def shuffle_cards
    @cards = @cards.shuffle
    puts %q(###SHUFFLE CARDS###)
    puts @cards.join
    puts "\n"
  end

  def deal_cards
    1.upto(4) do |i|
      @player[i-1] = @cards[13*(i - 1)..(13*i -1)]
      puts "###CARDS FOR PLAYER#{i}###"
      puts @player[i-1].join
      puts "\n"
    end
  end
end
porker = Poker.new
porker.generate_cards
porker.shuffle_cards
porker.deal_cards