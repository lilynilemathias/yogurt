class ApiController < ApplicationController
	def index
		address =	params[:address] 
		response = Yelp.client.search(address, { 
			term: 'Frozen Yogurt', 
			limit: 5
		});
	
		#responose.businesses[0].name
		#response.businesses[0].location.display_address
		##this is how I parsed the name and address of the yogurt shop.

		@list_of_locations = response.businesses
	end
end 