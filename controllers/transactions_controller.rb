require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/transaction.rb' )
require_relative( '../models/merchant.rb' )
require_relative( '../models/tag.rb' )

get '/transactions' do
  @transactions = Transaction.all
  @total = Transaction.total_spend()
  erb ( :"transactions/index" )
end

post '/transactions' do
  @transaction = Transaction.new(params)
  @transaction.save()
  redirect to ('/transactions')
end
