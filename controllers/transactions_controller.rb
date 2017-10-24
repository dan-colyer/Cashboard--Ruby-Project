require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/transaction.rb' )
require_relative( '../models/merchant.rb' )
require_relative( '../models/tag.rb' )

get '/transactions' do
  @transactions = Transaction.all
  @total = Transaction.total_spend()
  @budget_minus_total = Transaction.budget_minus_total_spend()
  @merchants = Merchant.all()
  @tags = Tag.all()
  erb ( :"transactions/index" )
end

post '/transactions' do
  @transaction = Transaction.new(params)
  @transaction.save()
  redirect '/transactions'
end
