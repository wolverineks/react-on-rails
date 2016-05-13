# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  record = Record.create(
    title: "Record",
    date: Date.today,
    amount: (([1, -1].sample) * ([10, 50, 100].sample))
  )
  record.title = "Record #{record.id}"
  record.save
end
