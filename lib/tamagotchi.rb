class Tamagotchi
  @@refill = 10
  @@bday_hour = 0

  define_method(:initialize) do |name|
    @name = name
    @sleep = 10
    @food = 10
    @fun = 10
    @set_bday = @@bday_hour.==0
      @@bday_hour = Time.new().hour()
      end

  define_method(:name) do
    @name
  end

  define_method(:sleep_level) do
    @sleep
  end

  define_method(:fun_level) do
    @fun
  end

  define_method(:food_level) do
    @food
  end

  define_method(:time_passes) do
    @sleep = @sleep-1
    @fun = @fun-1
    @food = @food-1
  end


  

end
