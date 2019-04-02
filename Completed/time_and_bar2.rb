class Drink #creates a drink class with a few variables
  attr_accessor :name, :cost, :make_cost, :drinklog
  def initialize(name, cost, make_cost)
    @name = name
    @cost = cost
    @make_cost = make_cost
    @drinklog = {}  #empty array initialised so that the add_one method works
  end
  
  def margin
    return cost-make_cost #simple calculation to determine profit margin
  end
  
  def add_one (ordered, drinklog) #takes the drink and the drinklog and adds 1 to the value in the hash
    drinklog[ordered] += 1 
  end 

  def ordered
    puts "You have ordered 1 #{@name}" #a simple puts just to confirm they've added something
  end

  def add_one_and_ordered(drink) #tried to get those two to work together to avoid repeating but it don't work...
    drink.add_one(:drink, drinklog)
    system"clear"
    drink.ordered
  end
end

cocktail = Drink.new("Cocktail", 22, 8) #setting the drinks with a cost and how much they cost to make
beer = Drink.new("Beer", 12, 3)
water = Drink.new("Water", 6, 0.15)
#Tests
# puts cocktail.name
# puts cocktail.cost
# puts cocktail.make_cost
# puts cocktail.margin

drinklog = {cocktail: 3, beer: 6, water: 2} #drinklog is a hash that starts with the backlog specified


puts "What drink would you like?"

looping = true      #looping condition
while looping == true
  puts "Type \"done\" when finished
  Options: (c)ocktail, (b)eer, (w)ater"                 #puts the options and gets the answer
  drink_ordered = gets.chomp

  case drink_ordered                                    #figures out what drink they want 
    when "cocktail", "c", ""
      cocktail.add_one(:cocktail, drinklog) #3 lines add to the log, clear the screen and say its been ordered
      system"clear"
      cocktail.ordered
    when "beer", "b"
      beer.add_one(:beer, drinklog)
      system"clear"
      beer.ordered
    when "water", "w"
      water.add_one(:water, drinklog)
      system"clear"
      water.ordered
    when "done", "d"                                     #clears the loop
      system"clear"
      puts "Thank you for ordering!"
      looping = false 
    else                                                 #else case
      puts "Sorry, that is not a valid input"
  end 
end 

#profit calculations:
cocktail_profit = (drinklog[:cocktail] * cocktail.margin)
beer_profit = (drinklog[:beer] * beer.margin)
water_profit = (drinklog[:water] * water.margin.round(2))
total_profit = cocktail_profit + beer_profit + water_profit.round(2) #calculations use round(2) for float


puts "You have #{drinklog.values.sum} drinks waiting:
#{drinklog[:cocktail]} cocktails
#{drinklog[:beer]} beers
#{drinklog[:water]} glasses of water." #takes the values from the hash and interpolates them
puts "You have made $%.2f profit from in total. Would you like more information? y/n" %total_profit #totalprofit
moreinfo = gets.chomp
case moreinfo #lets them decide whether or not they want to get the full info breakdown for profit.
  when "yes", "y"
    puts  "You have made:
    $#{cocktail_profit} from cocktails 
    $#{beer_profit} from beer
    $%.2f from water" %water_profit
  when "no", "n"
    puts "Ok. Have a good day & happy bartending!" #positivevibesonly
end 