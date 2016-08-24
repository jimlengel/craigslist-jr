get '/articles' do
  erb :'articles/index'
end

get'/articles/new' do
  erb :'articles/new'
end

post '/articles' do
  p "* " * 45
  p params
  p params[:article]
  p "* " * 45
  #below works with properly formatted params in HTML form
  @article = Article.new(params[:article]) #create new article

  if @article.save #saves new article or returns false if unsuccessful
    redirect '/articles' #redirect back to articles index page
  else
    erb :'articles/new' # show new articles view again(potentially displaying errors)
  end

end

# get '/articles/:id' do

#   #your code here

# end

# get '/articles/:id/edit' do

#   #your code here

# end

# put '/articles/:id' do

#   #your code here

# end

# delete '/articles/:id' do

#   #your code here

# end

