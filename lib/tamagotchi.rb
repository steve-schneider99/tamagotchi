class Tamagotchi
  @@refill = 10

  define_method(:initialize) do |name|
    @name = name
    @sleep = 10
    @food = 10
    @fun = 10
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


end
