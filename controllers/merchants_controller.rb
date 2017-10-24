require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/transaction.rb' )
require_relative( '../models/merchant.rb' )
require_relative( '../models/tag.rb' )

get '/merchants' do
  @transactions = Transaction.all
  @total = Transaction.total_spend()
  @budget_minus_total = Transaction.budget_minus_total_spend()
  @merchants = Merchant.all()
  @tags = Tag.all()
  erb ( :"merchants/index" )
end

get '/merchants/new' do
  @merchants = Merchant.all()
  erb (:"merchants/new")
end

post '/merchants/new' do
  @merchant = Merchant.new(params)
  @merchant.save()
  erb (:"merchants/new")
  redirect '/transactions'
end
