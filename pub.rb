class Pub

  attr_reader :til, :name

  def initialize (name, til, drinks)
    @name = name
    @til = til
    @drinks = drinks
  end

  def add_money_til(drink)

    @til += drink.price
  end

  def sell_drink_to_customer(drink, customer)
    if customer.wallet >= drink.price
      add_money_til(drink)
      remove_money_wallet(drink, customer)
    end
    return "No drink for you"
  end
end
