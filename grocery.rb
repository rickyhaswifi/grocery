=begin
√ Display a menu in the console for the user to interact with.
√ Create a default array of hashes that represent items at a grocery store.
√ Create a menu option to add items to a user's grocery cart.
√ Create a menu option to display all the items in the cart.
√ Create a menu option to remove an item from the users cart.
√ Create a menu option to show the total cost of all the items in the user's cart.
√ Add new items to the grocery store.

BONUS
√ Assign the user an amount of money to start.
√ Give the user the option to "Check out".
√ If they have enough money, their cart gets cleared and money is subtracted.
√ If they don't have enough money, they have to delete items.
√ Apply some sort of coupon system.
√ For example, a 20% off coupon that takes the price of all items down by 20%.
√ Apply taxes to transaction.
√ A menu option that shows a history of all the items purchased. (While the script runs)

Allow a user to remove multiple items at once from the cart.
Grocery store items have a quantity. (They can be out of stock)
wallet as a class 
=end

require 'colorize'

def divi
puts '~•' *6
end

class Errand_start
  def initialize
    wallet_amt = @wallet_amt
  end  
end  

def intro
  puts
  puts 'May you go to the store & buy me some groceries? - Grandma'
  puts 'How much money can I give you?'
  print "$ " 
  @wallet_amt = gets.to_f
  puts "*Grandma gave you $#{@wallet_amt}".colorize(:green)
  puts 'Now go to the store & remember to check coupons'
  puts '...'
  puts "Don't waste it or gamble the money either"
  isles
  
end


@cart = []

@dairy = [
    {
      item: 'Utah Milk',
      price: 3.99
    },
  {
    item: 'Almond Milk',
    price: 4.99
  },
  {
    item: 'Cheese',
    price: 5.99
  }
]

@deli = [
  {
    item: 'Turkey',
    price: 5.99
  },
  {
    item: 'Ham',
    price: 5.99
  },
  {
    item: 'Balony',
    price: 6.99
  }
]

@produce = [
  {
    item: 'Tomato',
    price: 1.00
  },
  {
    item: 'Letuce',
    price: 2.00
  },
  {
    item: 'Avocado',
    price: 8.00
  }
]

@special_request = []
@purchases = []

######################## ISLES

def isles
  # wallet_amt = @wallet_amt
  puts "You have $#{@wallet_amt}".colorize(:green)
  divi
  puts '1) Isle - Dairy'
  puts '2) Isle - Deli'
  puts '3) Isle - Produce'
  puts '4) Request special item from manager'
  puts '5) Review cart & checkout'
  puts '6) Employees only'
  puts '7) View wallet & reciepts'
  puts '8) Look for sale flyers'
  puts '9) Leave the store'
  divi
  puts
  isle_choices
end

def isle_choices
  puts
  puts 'Which isle would you like to walk down?'
  user_input = gets.to_i
  if user_input == 1
    view_dairy
  elsif user_input == 2
    view_deli
  elsif user_input == 3
    view_produce   
  elsif user_input == 4  
    special_request   
  elsif user_input == 5  
    my_cart  
  elsif user_input == 6  
    break_room
  elsif user_input == 7
    remaining_balance
  elsif user_input == 8
    puts
    puts 'You found a ripped paper that says: ' + 'smiths'.colorize(:cyan)
    puts '* the back says bring money to break room...'
    puts
    isles
  else
    exit  
  end
end



# DEPARTMENTS - Dairy

def view_dairy
  puts
  divi
  puts 'Welcome to the dairy isle'
  puts 'What would you like to toss in your cart?'
  puts '1. Milk $3'
  puts '2. Almond Milk $4'
  puts '3. Cheese $6'
  puts '4. Go down different isle'
  divi
  puts
  dairy_isle_choices
end

def dairy_isle_choices
  cart = @cart
  dairy = @dairy
  puts
  puts 'Choose an item'
  dairy_user_input = gets.chomp.to_i

  if dairy_user_input == 1
  item = dairy[0].clone
  cart.push(item)
  my_cart
  isles  
  elsif dairy_user_input == 2
    item = dairy[1].clone
    cart.push(item)
    my_cart
  isles
elsif dairy_user_input == 3
  item = dairy[2].clone
  cart.push(item)
  my_cart
isles
  
  else
  puts  
  puts 'I don\'t see that on the shelf, maybe I should ask for help..'
  isles
  end
end

######################


#   puts
#   isle_choices
# end  

def view_deli
  puts
  divi
  puts 'Welcome to the deli isle'
  puts 'What would you like to toss in your cart?'
  puts '1. Turkey $6.99'
  puts '2. Ham  $5.99'
  puts '3. Balony $6.99'
  puts '4. Go down different isle'
  divi
  puts
  deli_isle_choices
end

def deli_isle_choices
  cart = @cart
  deli = @deli
  puts
  puts 'Choose an item'
  deli_user_input = gets.chomp.to_i

  if deli_user_input == 1
  item = deli[0].clone
  cart.push(item)
  my_cart
  isles  
  elsif deli_user_input == 2
    item = deli[1].clone
    cart.push(item)
    my_cart
  isles
elsif deli_user_input == 3
  item = deli[2].clone
  cart.push(item)
  my_cart
isles
  
  else
  puts  
  puts 'I don\'t see that on the shelf, maybe I should ask for help..'
  isles
  end
end

def view_produce
  puts
  divi
  puts 'Welcome to the produce isle'
  puts 'What would you like to toss in your cart?'
  puts '1. Tomato $1.00'
  puts '2. Letuce  $2.00'
  puts '3. Avocado $8.00'
  puts '4. Go down different isle'
  divi
  puts
  produce_isle_choices
end

def produce_isle_choices
  cart = @cart
  produce = @produce
  puts
  puts 'Choose an item'
  produce_user_input = gets.chomp.to_i

  if produce_user_input == 1
  item = produce[0].clone
  cart.push(item)
  my_cart
  isles  
  elsif produce_user_input == 2
    item = produce[1].clone
    cart.push(item)
    my_cart
  isles
elsif produce_user_input == 3
  item = produce[2].clone
  cart.push(item)
  my_cart
isles
  
  else
  puts  
  puts 'I don\'t see that on the shelf, maybe I should ask for help..'
  isles
  end
end 

# CART OPTIONS
def my_cart
  cart = @cart
  total = @cart.inject(0) { |sum, hash| sum + hash[:price].to_f}
  tax_total = total + total * 0.0825
  puts "Your total was $#{total.round(2)}"
  puts "With tax your total is $#{tax_total.round(2)} taxed at 0.0825%"
  puts
  puts 'Are you happy with your cart or would you like to remove item?'
  puts
  puts '1) Keep cart as is & Checkout'
  puts '2) Slide item back into shelf'
  puts '3) Continue shopping'
  puts  
 
  def cart_items
    puts '  Shopping Cart  '
    @cart.size.times do |i|
      puts "#{i + 1}) Item Name: #{@cart[i][:item]}"
      puts "Item Price: #{@cart[i][:price]}"
      divi
    end
   end 
   cart_items

  cart_choice = gets.to_i
  if cart_choice == 1
    puts 'great lets check out'
    checkout
  elsif cart_choice == 2
    remove_item
  elsif cart_choice == 3  
    isles
  else  
    puts '*thinks to self* Let me walk around some more'
    my_cart
  end  
end  

def remove_item
  puts 'Remve which item'
  puts 'Enter the number for the item you want to delete'
  cart = @cart
  cart_items
  # cart.each_with_index {|val, index| puts "#{index +1} #{val}"}
  remove = gets.to_i
  @cart.delete_at(remove-1)
  cart_items
  puts 'You removed an item, time to keep shopping'
  isles
end


def special_request 
  cart = @cart
  puts 'What can I get you? - Manager'
  request = gets.to_s.chomp
  puts
  puts 'I forgot my glasses, can you read me the price? - Manager'
  print "$ " 
  request_price = gets.to_f
  puts 'Yup! Here you go!'
  new_item = {item: request, price: request_price}
  @special_request << new_item
  item = @special_request[0].clone
  cart.push(item)

  my_cart
  isles  
end

def checkout 
  wallet_amt = @wallet_amt
  purchases = @purchases
  total = @cart.inject(0) { |sum, hash| sum + hash[:price].to_f}
  tax_total = total + total * 0.0825
  tax_total_w_coupon = total * 0.8
  cart = @cart
  @wallet_amt = wallet_amt.to_f
 puts
  puts 'Enter a coupon code if you have it, if not hit enter'
  couponcode = gets.chomp

  if couponcode == 'smiths'
  puts
  puts "With your coupon & tax your total is $#{tax_total_w_coupon.round(2)}"
  puts cart
  @wallet_amt = wallet_amt - tax_total_w_coupon.to_f
  puts "Remaining cash is $#{@wallet_amt.round(2)}"
  item = cart.clone
  purchases.push(item)
  cart.clear

  elsif wallet_amt >= tax_total
  puts "With Tax your total is #{tax_total.round(2)}"
  puts cart
  @wallet_amt = wallet_amt - tax_total.to_f
  puts "Remaining cash is $#{@wallet_amt.round(2)}"
  item = cart.clone
  purchases.push(item)
  cart.clear

  elsif wallet_amt <= tax_total
  puts 'Please remove items'
  remove_item

  else
  break_room
  end

  puts
  divi
  isles
end

def break_room
 puts
 puts 'Employees are playing craps, would you like to play? [y/n]'
 break_room_options
end

def break_room_options
  break_options = gets.chomp
  if break_options == 'y' 
    craps
  else
    isles 
  end
end  

def craps
   wallet_amt = @wallet_amt
   wallet_amt.to_f
  dice = (1..6).to_a
  if dice.sample == 6
    winning_pot = wallet_amt * 2
    puts "Dice role is #{dice.sample.to_i}"
    puts 'Winner!'.colorize(:green)
    puts "you won $#{winning_pot}, employees kicked you out".colorize(:green)
    puts "New Balance is $#{@wallet_amt.round(2)}"
    @wallet_amt = winning_pot.to_f
   isles

  elsif dice.sample != 6
    puts "Dice role is #{dice.sample.to_i}"
    crap_cost = 10.00
    losing_pot = wallet_amt - crap_cost.to_f
    puts 'You lost $10 & employees kicked you out'.colorize(:red)
    puts "New Balance is $#{losing_pot.round(2)}".colorize(:red)
    @wallet_amt = wallet_amt - crap_cost.to_f
    isles
  else
    isles
  end  
end


def remaining_balance
  wallet_amt = @wallet_amt
  puts "You have $#{@wallet_amt}"
  puts @purchases
  isles
end

intro

