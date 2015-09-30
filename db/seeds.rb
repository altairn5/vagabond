require 'ffaker'

User.destroy_all
City.destroy_all

10.times do

  # build the user params
  user_params = Hash.new
  user_params[:first_name] = FFaker::Name.first_name
  user_params[:last_name] = FFaker::Name.last_name
  user_params[:email] = FFaker::Internet.email
  user_params[:email_confirmation] = user_params[:email]
  user_params[:password]  = "123456"
  user_params[:password_confirmation] = user_params[:password]
  user_params[:city_id] = 1
  # save the user
  new_user = User.create(user_params)

  # create 10 articles for each user
  5.times do
    new_post = Post.new
    new_post.city_id = rand(1..3)
    new_post.title = FFaker::BaconIpsum.words(rand(8)+2).join(" ")
    new_post.body = FFaker::BaconIpsum.paragraphs(1+ rand(4)).join("\n")
    # save the article
    new_post.save
    # associate the article with the user
    new_user.posts.push new_post
  end

end

cities = City.create([{ name: 'San Francisco' }, { name: 'London' }, {name: 'Gibraltar'}])
