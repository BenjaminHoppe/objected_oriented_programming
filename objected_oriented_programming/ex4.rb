 class PaperBoy

   def initialize(name)
     @name = name
     @expierence = 0
     @earnings = 0
     @quota = 50
   end

   def quota
     @quota + @expierence / 2
   end

   def expierence
     return @expierence
   end

     # Do Not Fully Understand
   def deliver(start_adress, end_adress)
     @expierence = start_adress - end_adress
     if @expierence > @quota
       @earnings += @quota * 0.25
       @earnings += (@expierence - @quota) * 0.5
     elsif @expierence < @quota
       @earnings += @expierence * 0.25
       @earnings -= 2
     end
   end

     def report
       puts "I'm #{@name},I've delivered #{@expierence} papers and made #{@earnings} so far!"
     end

     def earnings
       return @earnings
     end
 end

# Program returns negative numbers. why?
ben = PaperBoy.new("Ben")
ben.deliver(30, 50)
ben.report
