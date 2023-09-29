# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create('name' => 'Linda Johnson', 'photo' => 'https://i.pravatar.cc/150?img=12', 'bio' => 'Linda is a prominent scientist in the field of biotechnology. Born in New York in 1980, Ana showed exceptional talent from a young age. She completed her Ph.D. in Molecular Genetics at the age of 25 and has since been a trailblazer in researching gene therapies for rare diseases. Her commitment to gender equity in science has led her to spearhead mentorship programs for young women in STEM.')
second_user = User.create('name' => 'Ana Garcia', 'photo' => 'https://i.pravatar.cc/150?img=14', 'bio' => 'Ana is a renowned Spanish architect born in Barcelona in 1975. Her passion for sustainable architecture has led her to design iconic buildings that combine modern aesthetics with eco-efficiency. Maria has received numerous awards for her work and is a passionate advocate for revitalizing urban spaces through sustainable design.')
third_user = User.create('name' => 'George Chang', 'photo' => 'https://i.pravatar.cc/150?img=10', 'bio' => 'George is a chef and culinary entrepreneur hailing from South Korea. Born in Seoul in 1981, Chang moved to New York in his teens and revolutionized the culinary scene with his restaurant, Momofuku. His innovative approach to cuisine blends traditional techniques with global influences, earning multiple Michelin stars and transforming how we perceive Asian food.')
fourth_user = User.create('name' => 'Ringo Perez', 'photo' => 'https://i.pravatar.cc/150?img=18', 'bio' => 'Ringo is a successful Argentinean entrepreneur born in Buenos Aires in 1970. He began his career as a tech entrepreneur in the 1990s and founded several market-leading technology companies. His strategic vision and leadership have made him a stalwart in the international tech industry. Additionally, he is known for his commitment to corporate social responsibility and philanthropy.')

first_post = Post.create(author: first_user, 'title' => 'Post 1', 'text' => 'This is the text of post 1')
fifth_post = Post.create(author: first_user, 'title' => 'Post 5', 'text' => 'This is the text of post 5')
sixth_post = Post.create(author: first_user, 'title' => 'Post 6', 'text' => 'This is the text of post 6')
seventh_post = Post.create(author: first_user, 'title' => 'Post 7', 'text' => 'This is the text of post 7')
eighth_post = Post.create(author: first_user, 'title' => 'Post 8', 'text' => 'This is the text of post 8')
nineth_post = Post.create(author: first_user, 'title' => 'Post 9', 'text' => 'This is the text of post 9')
second_post = Post.create(author: second_user, 'title' => 'Post 2', 'text' => 'This is the text of post 2')
third_post = Post.create(author: third_user, 'title' => 'Post 3', 'text' => 'This is the text of post 3')
fourth_post = Post.create(author: fourth_user, 'title' => 'Post 4', 'text' => 'This is the text of post 4')

first_comment = Comment.create(user: first_user, post: second_post, 'text' => 'This is the text of comment 1')
second_comment = Comment.create(user: second_user, post: third_post, 'text' => 'This is the text of comment 2')
third_comment = Comment.create(user: third_user, post: first_post, 'text' => 'This is the text of comment 3')
fourth_comment = Comment.create(user: fourth_user, post: first_post, 'text' => 'This is the text of comment 4')
fifth_comment = Comment.create(user: first_user, post: second_post, 'text' => 'This is the text of comment 5')
sixth_comment = Comment.create(user: second_user, post: third_post, 'text' => 'This is the text of comment 6')

first_like = Like.create(user: first_user, post: third_post)
second_like = Like.create(user: second_user, post: first_post)
third_like = Like.create(user: third_user, post: second_post)
fourth_like = Like.create(user: fourth_user, post: fourth_post)