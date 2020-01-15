class Customer

attr_reader :name, :wallet


 def initialize(name, wallet)
   @name = name
   @wallet = wallet
 end



def remove_money_wallet(drink, customer)
  customer.wallet -= drink.price
end


end
