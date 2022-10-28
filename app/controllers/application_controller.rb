require 'pry'
class ApplicationController < Sinatra::Base
  # set :default_content_type, 'application/json'
  # Add your routes here
  get "/users" do
    users = User.all
    users.to_json
  end

  get "/authors" do
    authors = Author.all
    authors.to_json
  end

  get "/quotes" do
    quotes = Quote.all.uniq
    quotes.to_json(include: :author)
  end
  
  get "/favorite" do
   quotes = Quote.where(user_id: 1)
   quotes.to_json
  end
  # get "/favorite" do
  #   author = Quote.where(author_id == author: params[:author])
  #   author.to_json
  #  end
  
  post '/quotes' do
    # authorid = Author.find_or_create_by(name: params[:author]).id
    
    quote = Quote.create(
      
     # author_id: authorid,
      text_content: params[:quote],
      author: Author.find_or_create_by(name: params[:person])
    )
    
    quote.to_json(include: :author)
  end

  post '/authors' do
    author = Author.create(
     author: params[:author]
    )
    author.to_json
  end

  put '/quotes/:id' do
    quote = Quote.find(params[:id])
    quote.update(user_id: params[:user_id])
  end

  # post '/authors' do 
  #   newQuote = Author.create(name: params[:name],
  #   quote: params[:quote)
  #     newQuote.to_json
  # end

  delete '/favorite/:id' do
    quote = Quote.find(params[:id])
    quote.update(user_id: "")
  end


  # user.qoutes.update(id: params[:qoute_id])


end