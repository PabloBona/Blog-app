## Users information
first_user = User.create!(
  name: "Ethan Johnson",
  email: "hola@example.com",  # Asigna un correo electrónico válido aquí
  password: "password123",       # Asigna una contraseña válida aquí
  photo: "https://i.postimg.cc/gctvJHWH/Screenshot-2023-07-1...",
  bio: "Dedicated Mexican educator with a passion for fost...",
  posts_counter: 0
)
first_user = User.create!(
  name: "Ethana Johnson",
  email: "pepe@example.com",  # Asigna un correo electrónico válido aquí
  password: "password123",       # Asigna una contraseña válida aquí
  photo: "https://i.postimg.cc/gctvJHWH/Screenshot-2023-07-1...",
  bio: "Dedicated Mexican educator with a passion for fost...",
  posts_counter: 0
)
second_user = User.create!(
  name: "Ethane Johnson",
  email: "juan@example.com",  # Asigna un correo electrónico válido aquí
  password: "password123",       # Asigna una contraseña válida aquí
  photo: "https://i.postimg.cc/gctvJHWH/Screenshot-2023-07-1...",
  bio: "Dedicated Mexican educator with a passion for fost...",
  posts_counter: 0
)
third_user = User.create!(
  name: "Ethano Johnson",
  email: "asd@example.com",  # Asigna un correo electrónico válido aquí
  password: "password123",       # Asigna una contraseña válida aquí
  photo: "https://i.postimg.cc/gctvJHWH/Screenshot-2023-07-1...",
  bio: "Dedicated Mexican educator with a passion for fost...",
  posts_counter: 0
)
fourth_user = User.create!(
  name: "Ethanu Johnson",
  email: "exaasddasdasadsadsadsdasmple4@example.com",  # Asigna un correo electrónico válido aquí
  password: "password123",       # Asigna una contraseña válida aquí
  photo: "https://i.postimg.cc/gctvJHWH/Screenshot-2023-07-1...",
  bio: "Dedicated Mexican educator with a passion for fost...",
  posts_counter: 0
)
# User 1 Post
first_post = Post.create(author_id: 1, title: 'My First Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis mi in urna eleifend vehicula sit amet a mauris. Proin eget lacus sit amet velit aliquet dictum.', comments_counter: 0, likes_counter: 0)
second_post = Post.create(author_id: 1, title: 'My Second Post', text: 'Nulla facilisi. Phasellus interdum turpis id est ultrices, ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
third_post = Post.create(author_id: 1, title: 'My Third Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)
fourth_post = Post.create(author_id: 1, title: 'My Fourth Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0) 
Post.create(author_id: 1, title: 'My Fifth Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 1, title: 'My Sixth Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 1, title: 'My Seventh Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 1, title: 'My Eigth Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)

# User 2 Post
Post.create(author_id: 2, title: 'My First Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis mi in urna eleifend vehicula sit amet a mauris. Proin eget lacus sit amet velit aliquet dictum.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 2, title: 'My Second Post', text: 'Nulla facilisi. Phasellus interdum turpis id est ultrices, ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 2, title: 'My Third Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 2, title: 'My Fourth Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 2, title: 'My Fifth Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)

# User 3 Post
Post.create(author_id: 3, title: 'My First Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis mi in urna eleifend vehicula sit amet a mauris. Proin eget lacus sit amet velit aliquet dictum.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 3, title: 'My Second Post', text: 'Nulla facilisi. Phasellus interdum turpis id est ultrices, ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 3, title: 'My Third Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 3, title: 'My Fourth Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 3, title: 'My Fifth Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 3, title: 'My Sixth Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 3, title: 'My Seventh Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)

# User 4 Post
Post.create(author_id: 4, title: 'My First Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis mi in urna eleifend vehicula sit amet a mauris. Proin eget lacus sit amet velit aliquet dictum.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 4, title: 'My Second Post', text: 'Nulla facilisi. Phasellus interdum turpis id est ultrices, ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 4, title: 'My Third Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 4, title: 'My Fourth Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 4, title: 'My Fifth Post', text: 'Sed sed venenatis nibh. Aenean elementum dolor a purus vehicula, quis faucibus ipsum scelerisque. Cras aliquam facilisis odio, at dignissim lorem varius vel.', comments_counter: 0, likes_counter: 0)
Post.create(author_id: 4, title: 'My Sixth Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ac tincidunt est aliquam. Suspendisse potenti. Fusce eget varius odio, a aliquam odio.', comments_counter: 0, likes_counter: 0)

# # Post Comments User 1
# Comment.create(author_id: 1, post_id: 8, text: 'This is my first comment')
# Comment.create(author_id: 1, post_id: 13, text: 'This is my second comment')
# Comment.create(author_id: 1, post_id: 20, text: 'This is my third comment')
# Comment.create(author_id: 1, post_id: 26, text: 'This is my fourth comment')
# Comment.create(author_id: 1, post_id: 8, text: 'This is my fifth comment')
# Comment.create(author_id: 1, post_id: 13, text: 'This is my sixth comment')
# Comment.create(author_id: 1, post_id: 20, text: 'This is my seventh comment')
# Comment.create(author_id: 1, post_id: 26, text: 'This is my eigth comment')

# # Post Comments User 2
# Comment.create(author_id: 2, post_id: 8, text: 'This is my first comment')
# Comment.create(author_id: 2, post_id: 13, text: 'This is my second comment')
# Comment.create(author_id: 2, post_id: 20, text: 'This is my third comment')
# Comment.create(author_id: 2, post_id: 26, text: 'This is my fourth comment')
# Comment.create(author_id: 2, post_id: 8, text: 'This is my fifth comment')
# Comment.create(author_id: 2, post_id: 13, text: 'This is my sixth comment')
# Comment.create(author_id: 2, post_id: 20, text: 'This is my seventh comment')
# Comment.create(author_id: 2, post_id: 26, text: 'This is my eigth comment')

# # Post Comments User 3
# Comment.create(author_id: 3, post_id: 8, text: 'This is my first comment')
# Comment.create(author_id: 3, post_id: 13, text: 'This is my second comment')
# Comment.create(author_id: 3, post_id: 20, text: 'This is my third comment')
# Comment.create(author_id: 3, post_id: 26, text: 'This is my fourth comment')
# Comment.create(author_id: 3, post_id: 8, text: 'This is my fifth comment')
# Comment.create(author_id: 3, post_id: 13, text: 'This is my sixth comment')
# Comment.create(author_id: 3, post_id: 20, text: 'This is my seventh comment')
# Comment.create(author_id: 3, post_id: 26, text: 'This is my eigth comment')
