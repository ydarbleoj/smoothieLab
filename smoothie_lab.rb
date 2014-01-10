# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}


def blend(smoothie_ingredients)
  smoothie_ingredients.keys.join.delete(' ').split("").shuffle.join
end 
puts blend(smoothie_ingredients)


# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array
 

class Blender 

  attr_accessor :ingredients, :switch

  def initialize(ingredients, switch=false)
    @ingredients = ingredients
    @switch = false
  end

  def pour 
    fruit = []
    @ingredients.each { |k, v| fruit << k }
    @ready = fruit.join.delete(" ")
  end 

  def blend
      if switch == true
        drink = @ready.split("").shuffle.join
        puts drink 
      else 
        puts "The blender isn't on!"
      end
  end 

  def switch()
    puts "Want a smoothie? Turn it on."
    choice = gets.chomp.downcase
    if choice == 'on'
      @switch = true 
      self.pour
      self.blend
    else 
      @switch = false 
      puts 'Turn on blender.'
    end 
  end 
end 

smoothie_ingredients = ['banana', 'blue berries', 'greek yogurt']

morning_drink = Blender.new(smoothie_ingredients)
morning_drink.switch()


