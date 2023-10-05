first_user = User.create!(
  name: "Alice Johnson",
  email: "alice.johnson@gmail.com",
  password: "password123",
  photo: "https://i.pravatar.cc/150?img=1",
  bio: "Dedicated educator with a passion for fostering learning...",
  posts_counter: 0,
  confirmed_at: Time.now
)

second_user = User.create!(
  name: "Bob Smith",
  email: "bob.smith@gmail.com",
  password: "password123",
  photo: "https://i.pravatar.cc/150?img=2",   
  bio: "Experienced professional striving for excellence in every endeavor...",
  posts_counter: 0,
  confirmed_at: Time.now
)

third_user = User.create!(
  name: "Emma Davis",
  email: "emma.davis@gmail.com",
  password: "password123",
  photo: "https://i.pravatar.cc/150?img=5",
  bio: "Passionate creative exploring the world through art and imagination...",
  posts_counter: 0,
  confirmed_at: Time.now
)

fourth_user = User.create!(
  name: "David Wilson",
  email: "david.wilson@gmail.com",
  password: "password123",
  photo: "https://i.pravatar.cc/150?img=4",
  bio: "Curious learner seeking knowledge and inspiration in every moment...",
  posts_counter: 0,
  confirmed_at: Time.now
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

# Post Comments User 1
Comment.create(user_id: 1, post_id: 8, text: 'This is my first comment')
Comment.create(user_id: 1, post_id: 13, text: 'This is my second comment')
Comment.create(user_id: 1, post_id: 20, text: 'This is my third comment')
Comment.create(user_id: 1, post_id: 26, text: 'This is my fourth comment')
Comment.create(user_id: 1, post_id: 8, text: 'This is my fifth comment')
Comment.create(user_id: 1, post_id: 13, text: 'This is my sixth comment')
Comment.create(user_id: 1, post_id: 20, text: 'This is my seventh comment')
Comment.create(user_id: 1, post_id: 26, text: 'This is my eigth comment')

# Post Comments User 2
Comment.create(user_id: 2, post_id: 8, text: 'This is my first comment')
Comment.create(user_id: 2, post_id: 13, text: 'This is my second comment')
Comment.create(user_id: 2, post_id: 20, text: 'This is my third comment')
Comment.create(user_id: 2, post_id: 26, text: 'This is my fourth comment')
Comment.create(user_id: 2, post_id: 8, text: 'This is my fifth comment')
Comment.create(user_id: 2, post_id: 13, text: 'This is my sixth comment')
Comment.create(user_id: 2, post_id: 20, text: 'This is my seventh comment')
Comment.create(user_id: 2, post_id: 26, text: 'This is my eigth comment')

# Post Comments User 3
Comment.create(user_id: 3, post_id: 8, text: 'This is my first comment')
Comment.create(user_id: 3, post_id: 13, text: 'This is my second comment')
Comment.create(user_id: 3, post_id: 20, text: 'This is my third comment')
Comment.create(user_id: 3, post_id: 26, text: 'This is my fourth comment')
Comment.create(user_id: 3, post_id: 8, text: 'This is my fifth comment')
Comment.create(user_id: 3, post_id: 13, text: 'This is my sixth comment')
Comment.create(user_id: 3, post_id: 20, text: 'This is my seventh comment')
Comment.create(user_id: 3, post_id: 26, text: 'This is my eigth comment')
