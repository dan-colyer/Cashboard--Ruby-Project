require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/transaction.rb' )
require_relative( '../models/merchant.rb' )
require_relative( '../models/tag.rb' )

get '/tags' do
  @transactions = Transaction.all
  @total = Transaction.total_spend()
  @budget_minus_total = Transaction.budget_minus_total_spend()
  @merchants = Merchant.all()
  @tags = Tag.all()
  erb ( :"tags/index" )
end

get '/tags/new' do
  @tags = Tag.all()
  erb (:"tags/new")
end

post '/tags/new' do
  @tag = Tag.new(params)
  @tag.save()
  redirect '/tags/new'
end

get '/tags/:id/edit' do
  @tags = Tag.find(params[:id])
  erb(:"tags/edit")
end

post '/tags/:id' do
  @tags = Tag.new(params)
  @tags.update
  redirect '/tags/new'
end
