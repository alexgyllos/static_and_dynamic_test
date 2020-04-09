require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game.rb')
require_relative('../card.rb')

class CardGameTest < Minitest::Test

  def setup
    @card1 = Card.new("Spades", 1)
    @card2 = Card.new("Hearts", 7)
    @cards = [@card1, @card2]
    @game = CardGame.new()
  end

  def test_check_for_ace
    result = @game.check_for_ace(@card1)
    assert_equal(true, result)
  end

  def test_highest_card
    result = @game.highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end

  def test_cards_total
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 8", result)
  end

end
