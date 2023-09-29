# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create('name' => 'Linda Johnson', 'photo' => 'https://i.pravatar.cc/150?img=45', 'bio' => 'Linda is a prominent scientist in the field of biotechnology. Born in New York in 1980, Ana showed exceptional talent from a young age. She completed her Ph.D. in Molecular Genetics at the age of 25 and has since been a trailblazer in researching gene therapies for rare diseases. Her commitment to gender equity in science has led her to spearhead mentorship programs for young women in STEM.')
second_user = User.create('name' => 'Ana Garcia', 'photo' => 'https://i.pravatar.cc/150?img=21', 'bio' => 'Ana is a renowned Spanish architect born in Barcelona in 1975. Her passion for sustainable architecture has led her to design iconic buildings that combine modern aesthetics with eco-efficiency. Maria has received numerous awards for her work and is a passionate advocate for revitalizing urban spaces through sustainable design.')
third_user = User.create('name' => 'George Chang', 'photo' => 'https://i.pravatar.cc/150?img=18', 'bio' => 'George is a chef and culinary entrepreneur hailing from South Korea. Born in Seoul in 1981, Chang moved to New York in his teens and revolutionized the culinary scene with his restaurant, Momofuku. His innovative approach to cuisine blends traditional techniques with global influences, earning multiple Michelin stars and transforming how we perceive Asian food.')
fourth_user = User.create('name' => 'Ringo Perez', 'photo' => 'https://i.pravatar.cc/150?img=11', 'bio' => 'Ringo is a successful Argentinean entrepreneur born in Buenos Aires in 1970. He began his career as a tech entrepreneur in the 1990s and founded several market-leading technology companies. His strategic vision and leadership have made him a stalwart in the international tech industry. Additionally, he is known for his commitment to corporate social responsibility and philanthropy.')

# Posts de Linda Johnson
first_post = Post.create(author: first_user, title: 'The Future of Gene Therapies', text: 'Linda Johnson explores the promising future of gene therapies in treating rare diseases. Her expertise in molecular genetics shines light on the groundbreaking advancements in this field. #Biotechnology #Genetics #Innovation')
fifth_post = Post.create(author: first_user, title: 'Empowering Women in STEM', text: 'In her latest post, Linda Johnson discusses her passion for empowering young women in STEM fields. She shares insights from her mentorship programs and advocates for gender equality in scientific research. #WomenInSTEM #Mentorship #GenderEquity')
sixth_post = Post.create(author: first_user, title: 'Cracking the Genetic Code', text: 'Linda Johnson delves into the intricacies of genetic codes, unraveling the mysteries that scientists are uncovering. Join her in this fascinating journey through the building blocks of life. #Genetics #DNA #ScienceExploration')

# Posts de Ana Garcia
second_post = Post.create(author: second_user, title: 'Sustainable Urban Architecture', text: 'Ana Garcia showcases her award-winning sustainable architectural designs. Through her innovative creations, she transforms urban spaces into eco-efficient marvels, proving that beauty and sustainability can coexist. #SustainableArchitecture #UrbanDesign #Innovation')
seventh_post = Post.create(author: second_user, title: 'Preserving Cultural Heritage through Architecture', text: 'In this post, Ana Garcia explores the intersection of culture and architecture. She discusses how preserving cultural heritage is essential in her architectural designs, creating spaces that honor the past while embracing the future. #CulturalHeritage #Architecture #Design')

# Posts de George Chang
third_post = Post.create(author: third_user, title: 'Global Flavors, Local Passion', text: 'George Chang takes you on a culinary journey around the world. Discover the rich tapestry of flavors and aromas that define his innovative approach to cuisine. Join him in savoring the essence of diverse cultures on a plate. #CulinaryExploration #GlobalCuisine #Innovation')
eighth_post = Post.create(author: third_user, title: 'The Art of Fusion Cooking', text: 'In this post, George Chang explores the art of fusion cooking, blending traditional techniques with global influences. Experience the harmonious marriage of flavors as he creates culinary masterpieces that bridge the gap between cultures. #FusionCooking #CulinaryArt #Innovation')

# Posts de Ringo Perez
fourth_post = Post.create(author: fourth_user, title: 'Innovation in Tech Entrepreneurship', text: 'Ringo Perez reflects on the evolving landscape of tech entrepreneurship. With a keen eye for innovation and strategic vision, he discusses the latest trends shaping the industry. Join him in exploring the future of technology. #TechInnovation #Entrepreneurship #FutureTech')
nineth_post = Post.create(author: fourth_user, title: 'Corporate Social Responsibility: A Vision for Change', text: 'In this post, Ringo Perez shares his insights on corporate social responsibility. He discusses the importance of businesses giving back to society and how philanthropy can be a driving force for positive change. #CSR #Philanthropy #SocialChange')


# Comentarios para los posts
first_comment = Comment.create(user: first_user, post: second_post, text: 'This is the text of comment 1')
second_comment = Comment.create(user: second_user, post: third_post, text: 'This is the text of comment 2')
third_comment = Comment.create(user: third_user, post: first_post, text: 'This is the text of comment 3')
fourth_comment = Comment.create(user: fourth_user, post: first_post, text: 'This is the text of comment 4')
fifth_comment = Comment.create(user: first_user, post: second_post, text: 'This is the text of comment 5')
sixth_comment = Comment.create(user: second_user, post: third_post, text: 'This is the text of comment 6')

first_like = Like.create(user: first_user, post: third_post)
second_like = Like.create(user: second_user, post: first_post)
third_like = Like.create(user: third_user, post: second_post)
fourth_like = Like.create(user: fourth_user, post: fourth_post)