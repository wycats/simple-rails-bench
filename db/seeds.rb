# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = [
  "Building 'From Holden', an apparel manufacturer, from the ground up",
  "More HTML5 APIs",
  "Obama's Secret Weapon In The South is 129 Million Years Old",
  "Bounce ball camera to help first responders",
  "Parse Partners with Twilio and Mailgun for the Release of Cloud Modules"
]

comments = [
  "What makes a language functional is its ability to eliminate tail recursion.",
  "You can redefine any class in Ruby, so you never need to do dependency injection.",
  "Is it just me or has the world moved on from Ruby?",
  "I don't know why one would start a new project in a language that didn't support Hindley-Milner.",
  "Any possibility of a \"Trello Hurricane fund\" which we can donate to?",
  "Semantic HTML5 tags makes to-HTML compiled languages mostly unnecessary.",
  "Salting your passwords is cheap and creates a weak form of two factor authentication."
]

100.times do
  post = Post.create(title: posts.sample, body: posts.sample)

  10.times do
    post.comments << Comment.create(body: comments.sample)
  end
end
