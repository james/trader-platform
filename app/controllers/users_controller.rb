class UsersController < ApplicationController
  def index
    
  end
  
  def import
    url = "http://buildplatform.abscond.org/reputations/#{params[:buildplatformaccount]}.json"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @imported_data = JSON.parse(response)
  end
end
