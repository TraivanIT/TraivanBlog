# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


30.times do |p|
  Post.create!(
    title: "My Post #{p + 1}",
    publish: false,
    content: 'Lorem ipsum dolor amet chartreuse semiotics sustainable hot chicken, gentrify adaptogen wolf farm-to-table. Occupy asymmetrical food truck +1 lomo plaid. Cornhole keffiyeh migas master cleanse succulents. Paleo cornhole small batch, butcher portland cliche literally fashion axe keffiyeh. Ugh art party waistcoat, fingerstache jean shorts copper mug chambray crucifix. Austin mlkshk bitters williamsburg franzen portland asymmetrical iceland fanny pack tote bag enamel pin retro pickled. Mumblecore activated charcoal chambray butcher coloring book la croix hella health goth austin etsy everyday carry.',
    tag_ids: Tag.first.id,
    traivan_id: Traivan.first.id

    )

end 
puts '30 posts created'

