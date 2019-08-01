10.times do
  city = City.create!(zip_code:  Faker::Address.zip_code, name:  Faker::Address.city)
end

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 78), city: City.find(rand(1..20)))
end

20.times do
  gossip = Gossip.create!(
    title:  Faker::Lorem.sentence, 
    content:  Faker::Lorem.paragraph, 
    user: User.find(rand(1..10)))
end

10.times do
  tag = Tag.create!(
    title:  Faker::Lorem.word)
end

20.times do
  join_table_gossips_tag = JoinTableGossipsTag.create!(
    tag:  Tag.find(rand(1..10)), 
    gossip: Gossip.find(rand(1..20)))
end

20.times do
  comment = Comment.create!(
    content:  Faker::Lorem.paragraph, 
    user: User.find(rand(1..10)))
end

commentable_array = ["comment","gossip"]
likeable_array = ["comment","gossip"]

20.times do
  like = (Like.create!(
    user_id: Faker::Number.between(from: 1, to: 10),
    likeable_type: likeable_array.sample)
    Like.where(likeable_type: "comment", likeable_id: nil).update(likeable: Comment.find(rand(1..20)))
    Like.where(likeable_type: "gossip", likeable_id: nil).update(likeable: Gossip.find(rand(1..20))))
end

20.times do
  comment = (Comment.create!(
    content:  Faker::Lorem.paragraph, 
    commentable_type: commentable_array.sample,
    user_id: Faker::Number.between(from: 1, to: 10))
    Comment.where(commentable_type: "comment", commentable_id: nil).update(commentable: Comment.find(rand(1..20)))
    Comment.where(commentable_type: "gossip", commentable_id: nil).update(commentable: Gossip.find(rand(1..20))))
end