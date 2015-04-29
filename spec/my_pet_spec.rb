require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new pet") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq('lil dragon'))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.fun_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
    end
  end

  describe('#time_passes') do
    it('decreases the amount of food the Tamagotchi has left by 1') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes(1)
      expect(my_pet.food_level()).to(eq(9))
    end
  end

  describe('#is_alive') do
    it('is alive if the food level is above 0') do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
  end

    it('is dead if the food level is at 0') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_food_level(0)
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe('#time_passes') do
    it('decreases the amount of food, sleep, and fun the Tamagotchi has left by an argument') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes(5)
      expect(my_pet.sleep_level()).to(eq(5))
      expect(my_pet.food_level()).to(eq(5))
      expect(my_pet.fun_level()).to(eq(5))
    end
  end

  describe('refill_food') do
    it('increases the amount of food to full/10') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_food_level(5)
      expect(my_pet.refill_food()).to(eq(10))

    end
  end

end
