puts 'Clean DB'
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
  7.times do
    plant = Plant.new(plants.sample)
    plant.garden = garden
    plant.save!
  end
end

puts "#{Garden.count} gardens created !"
puts "#{Plant.count} gardens created !"
