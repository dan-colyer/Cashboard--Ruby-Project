require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/merchants_controller')
require_relative('controllers/tags_controller')
require_relative('controllers/transactions_controller')

get '/' do
  erb( :index )
end

# ### MVP:
#
# - Create new transactions
# - Display a list of all transactions
# - Display total amount spent
# - Display total amount spent by tag
# 
# ### Possible Extensions:
#
# - CRUD actions for the transactions
# - Show a warning when the total expenditure is over budget (set a hard coded budget first)
# - Add a date to the transactions and view total spending by month
# - Any other ideas you might come up with
