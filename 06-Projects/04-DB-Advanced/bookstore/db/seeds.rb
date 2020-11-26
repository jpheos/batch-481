if Rails.env.development?
  Book.destroy_all
  Author.destroy_all
end

5.times do
  author = Author.create name: Faker::Book.author
  Book.create title: Faker::Book.title, author: author
end
