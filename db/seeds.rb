require 'faker'

# 10.times do
#   user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 78), city_id: Faker::Number.between(from: 1, to: 10))
# end

# 10.times do
#   city = City.create!(zip_code:  Faker::Address.zip_code, name:  Faker::Address.city)
# end

# 20.times do
#   gossip = Gossip.create!(
#     title:  Faker::Lorem.sentence, 
#     content:  Faker::Lorem.paragraph, 
#     user_id: Faker::Number.between(from: 1, to: 10))
# end

# 10.times do
#   tag = Tag.create!(
#     title:  Faker::Lorem.word)
# end

# 20.times do
#   join_table_gossips_tag = JoinTableGossipsTag.create!(
#     tag_id:  Faker::Number.between(from: 1, to: 10), 
#     gossip_id: Faker::Number.between(from: 1, to: 20))
# end

# 20.times do
#   comment = Comment.create!(
#     content:  Faker::Lorem.paragraph, 
#     ## gossip_id: Faker::Number.between(from: 1, to: 20),
#     user_id: Faker::Number.between(from: 1, to: 10))
# end

# 20.times do
#   like = (Like.create!(
#     user_id: Faker::Number.between(from: 1, to: 10), 
#     belongs_to_gossip?: Faker::Boolean.boolean)
#   Like.where(belongs_to_gossip?: true, gossip_id: nil).update(gossip_id: Faker::Number.between(from: 1, to: 10))
#   Like.where(belongs_to_gossip?: false, comment_id: nil).update(comment_id: Faker::Number.between(from: 1, to: 10)))
# end

# comment = Comment.find(Faker::Number.between(from: 1, to: 20))
# gossip = Gossip.find(Faker::Number.between(from: 1, to: 20))
# commentable_array = [comment,gossip]

commentable_array = ["comment","gossip"]

20.times do
  comment = (Comment.create!(
    content:  Faker::Lorem.paragraph, 
    commentable_type: commentable_array.sample,
    user_id: Faker::Number.between(from: 1, to: 10))
    Comment.where(commentable_type: "comment", commentable_id: nil).update(commentable_id: Faker::Number.between(from: 1, to: 20))
    Comment.where(commentable_type: "gossip", commentable_id: nil).update(commentable_id: Faker::Number.between(from: 1, to: 20)))
end