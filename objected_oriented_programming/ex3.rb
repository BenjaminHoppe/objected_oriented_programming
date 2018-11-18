class Player
  def initialize(gold_coins, health_points, lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  def level_up
    @lives = @lives +1
    return @lives
  end

  def collect_treasure
    old_count = @gold_coins
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
      return @gold_coins
  end
  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end
    if @lives < 1
      puts  "Restarting..."
      restart
    else
      puts "Health: #{@health_points}"
      puts "Lives: #{@lives}"
    end
  end

  def restart
    puts "Restarting, be patient..."
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def show_status
  if @lives == 0
    puts "You are dead"
  else
    puts "You are alive"
  end
end

end

player1 = Player.new(0, 10, 5)

player1.collect_treasure
player1.do_battle(10)
player1.show_status
