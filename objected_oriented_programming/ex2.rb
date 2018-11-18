# The Cat's Meow

# Add another instance method called meow that returns a string of the cat telling you all about itself
# The return value should be something like "My name is Sparkles and I eat tuna at 11 AM"
# Call the meow method on each of the cats you instantiated in Step 3
# Once you're done, commit again!

class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i
  end

  def eats_at
    if @meal_time < 12
      puts "#{@meal_time}AM."
    else
      puts "#{@meal_time}PM."
  end
  end

  def meow
    puts "Hi, my name is #{@name}, I like to eat #{@preferred_food} at #{eats_at}...okay bye"
  end
end

puts Cat1 = Cat.new("Frank", "oranges", 6)
puts Cat2 = Cat.new("Whiskers", "Drugs", 11)
puts Cat1.eats_at

puts Cat1.meow
puts Cat2.meow
