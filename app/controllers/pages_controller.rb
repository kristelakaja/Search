require 'rest-client'
require 'json'

class PagesController < ApplicationController
  def search
  	if !params[:search].blank? 
  		@par = params[:search]
   		@res = RestClient.get('https://api.github.com/users/'+@par+'/repos')
 	 	@results = JSON.parse(@res)
 	 end
  end
end
