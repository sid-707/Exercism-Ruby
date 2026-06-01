module Blackjack
  def self.parse_card(card)
    case card
    when "ace"
      11
    when "two"
      2
    when "three"
      3
    when "four"
      4
    when "five"
      5
    when "six"
      6
    when "seven"
      7
    when "eight"
      8
    when "nine"
      9
    when "ten"
      10
    when "jack"
      10
    when "queen"
      10
    when "king"
      10
    else
      0
    end
  end

  def self.card_range(card1, card2)
    case parse_card(card1) + parse_card(card2)
    when (4..11)
      "low"
    when (12..16)
      "mid"
    when (17..20)
      "high"
    else
      "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    hand_value = parse_card(card1) + parse_card(card2)
    dealer_value = parse_card(dealer_card)
    case
    when card1 == "ace" && card2 == "ace"
      "P"
    when hand_value == 21 && !((10..11) === dealer_value)
      "W"
    when hand_value == 21 && ((10..11) === dealer_value)
      "S"
    when (17..20) === hand_value
      "S"
    when (12..16) === hand_value && dealer_value >= 7
      "H"
    when (12..16) === hand_value
      "S"
    when hand_value <= 11
      "H" 
    end
  end
end
