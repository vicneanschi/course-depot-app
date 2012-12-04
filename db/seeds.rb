# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:title=>'Capital',
	:description=> %{
	<p> Love adlf aldfj adlsf aldfj aldf asdf </p>},
	:image_url=>"/images/capital.jpg",
	:price=>99.99)
