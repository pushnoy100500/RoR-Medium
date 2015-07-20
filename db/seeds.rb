# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(user_id: 1, slug: 'http://www.dummylink.com', 
			title: 'dummy post #1', 
			image_url: 'dummy.jpg',
			content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
			Explicabo ea non numquam ratione dolorem earum officia architecto quis, 
			molestias pariatur eum itaque totam delectus incidunt tempore illo veritatis, quas quos.',
			is_published: true
			)
Post.create(user_id: 1, slug: 'http://www.dummylink.com', 
			title: 'dummy post #2', 
			image_url: 'dummy.jpg',
			content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
			Explicabo ea non numquam ratione dolorem earum officia architecto quis, 
			molestias pariatur eum itaque totam delectus incidunt tempore illo veritatis, quas quos.',
			is_published: true
			)
Post.create(user_id: 1, slug: 'http://www.dummylink.com', 
			title: 'dummy post #1', 
			image_url: 'dummy.jpg',
			content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
			Explicabo ea non numquam ratione dolorem earum officia architecto quis, 
			molestias pariatur eum itaque totam delectus incidunt tempore illo veritatis, quas quos.',
			is_published: false
			)