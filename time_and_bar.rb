# There are three parts to this challenge and remember to push your solution.

# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence  that lets us know how you got to class and how long it took
# - Print this complete sentence

# time_to_class = "40 minutes"
# method_of_transport = "Train"
# puts "It took me #{time_to_class} to get to class, via #{method_of_transport}"



# PART 2:
# You are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# Write a program that asks the customer for their order.
#   if they order a cocktail, add one to the number of cocktails you need to make,
#   if they order a water, add one to the number of waters you need to make,
#   if they order a beer, add one to the number of beers you need to pour

# Print the final drinks order so you know what to 

# Part Three:
# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make

# Print out the total profit for the orders you have
#----------------------------------------------------------------------------------------------------------------#

backlog = ["cocktail", "cocktail", "cocktail", "water", "water", "beer", "beer", "beer", "beer", "beer", "beer"] #Starting array given the values given.
cocktails = ["cocktail", "cocktail", "cocktail"] #an array full of cocktails to know how many there are
waters = ["water", "water"] #array that keeps track of how many waters there are
beers = ["beer", "beer", "beer", "beer", "beer", "beer"] # same for beer, duh

looping = true                                  #while loop condition
while looping
    puts "What drink would you like? (Options: (c)ocktail, (b)eer, (w)ater)
    Type (q)uit when done"
    drink_ordered = gets.chomp                  #gets the input of the drik
    case drink_ordered
        when "cocktail", "c"
            backlog << "cocktail"               #adds one to the backlog for the total
            cocktails << "cocktail"             #adds one to the cocktail list for the specifics
            puts "You have added 1 cocktail."
        when "beer", "b"
            backlog << "beer"                   #same as cocktail but for beer
            beers << "beer"
            puts "You have added 1 beer."
        when "water", "w"
            backlog << "water"                  #water as well
            waters << "water"
            puts "You have added 1 water."
        when "quit", "q"                        #exit condition for the loop
            looping = false
    end                                         #any other values just get discarded 
end  

puts "You have to make #{backlog.length} drinks: #{cocktails.length} cockatails, #{beers.length} beers and #{waters.length} waters."
#puts the backlog^ 
cocktail_profit = (cocktails.length * (22 - 8)) #profit calculations for the different drinks
beer_profit = beers.length * (12 - 3)
water_profit = waters.length * (6 - 0.15)
water_profit.to_f.round(2)                      # rounded as a float for costs
totalprofit = cocktail_profit + beer_profit + water_profit 
#                                               #^creates a total profit variable 

#puts the final profits with a breakdown.

puts "Your total profit has been $#{totalprofit}"
puts "You have made $#{cocktail_profit} from cocktails, $#{beer_profit} from beers and $#{water_profit} from water."