get '/articles' do
  @articles = Article.order(:created_at)
  erb :'articles/index'
end

get'/articles/new' do
  erb :'articles/new'
end

post '/articles' do
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

