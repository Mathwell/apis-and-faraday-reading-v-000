class SearchesController < ApplicationController
  def search
  end

  def foursquare
   Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
     req.params['client_id'] = 'FZBX0UF4F0BWLQR3RGDABUXHMRPES45AOISXRY1ILDHTMRL2'
     req.params['client_secret'] = 'VEGD3XCTVDJMWRYEGUV5GR3JHASUIEXVE1QAZITNJCUXAHWU'
     req.params['v'] = '20160201'
     req.params['near'] = params[:zipcode]
     req.params['query'] = 'coffee shop'
   end
   render 'search'

end
