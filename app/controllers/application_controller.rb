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
    quotes = Quote.all
    quotes.to_json
  end

end