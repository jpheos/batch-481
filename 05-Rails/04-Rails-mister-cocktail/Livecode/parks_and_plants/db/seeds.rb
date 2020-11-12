puts 'Clean DB'

Tag.destroy_all
Garden.destroy_all

puts 'Seeds DB'
gardens = [
  {
    name: 'Jardin des plantes',
    banner_url: 'https://images.unsplash.com/photo-1483809715206-0499044b5b69?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'

  },
  {
    name: 'Jardin du Luxembourg',
    banner_url: 'https://images.unsplash.com/photo-1571192776145-9f563c1df686?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'
  }
]

plants = [
  {
    name: 'Ficus',
    image_url: 'https://images.unsplash.com/photo-1591656884447-8562e2373a66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
  },

  {
    name: 'Menthe',
    image_url: 'https://images.unsplash.com/photo-1588908933351-eeb8cd4c4521?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },

  {
    name: 'Bananier',
    image_url: 'https://images.unsplash.com/photo-1552901633-210088e17486?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name: 'Fleur de Lys',
    image_url: 'https://images.unsplash.com/photo-1596571242677-c1dc2d4bca79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
  }
]

gardens.each do |attributes|
  garden = Garden.create!(attributes)
  plants.each do |plant_data|
    plant = Plant.new(plant_data)
    plant.garden = garden
    plant.save!
  end
end


%w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers).each do |tag_name|
  Tag.create!(name: tag_name)
end

PlantTag.create!(plant: Plant.find_by(name: 'Ficus'), tag: Tag.find_by(name: 'Fruit tree'))
PlantTag.create!(plant: Plant.find_by(name: 'Ficus'), tag: Tag.find_by(name: 'Cactus'))
PlantTag.create!(plant: Plant.find_by(name: 'Ficus'), tag: Tag.find_by(name: 'Flower'))
PlantTag.create!(plant: Plant.find_by(name: 'Menthe'), tag: Tag.find_by(name: 'Ferns'))
PlantTag.create!(plant: Plant.find_by(name: 'Menthe'), tag: Tag.find_by(name: 'Cactus'))



puts "#{Garden.count} gardens created !"
puts "#{Plant.count} plants created !"
puts "#{Tag.count} tags created !"
puts "#{PlantTag.count} plant tags created !"
