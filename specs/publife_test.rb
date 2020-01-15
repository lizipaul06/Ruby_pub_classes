require("minitest/autorun")
require("minitest/reporters")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Publife < MiniTest::Test

def setup
  @pub = Pub.new("The_Duck_and_Spoon", 10, ["Guiness", "Whiskey", "Beer", "Vodka"])
@drink = Drink.new("Guiness", 3)
@drink_2 =  Drink.new("Whiskey", 2)
@drink_3 = Drink.new("Beer", 3)
@drink_4 = Drink.new("Vodka", 1)
@customer = Customer.new("Geff", 5)
end

def test_wallet_count
  assert_equal(5, @customer.wallet)
end

def test_remove_money_wallet
  remove_money_wallet(@drink, @customer)
  assert_equal(2, @customer.wallet)
end

def test_add_money_til
  @pub.add_money_til(@drink)
  assert_equal(13, @pub.til)
end

def test_sell_drink_to_customer
  customer_1 = Customer.new("Margret", 100)
  @pub.sell_drink_to_customer(@drink_3, customer_1)
  assert_equal(97, customer.wallet)
  assert_equal(13, @pub.til_count)
end




end
