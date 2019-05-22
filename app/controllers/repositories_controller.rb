class RepositoriesController < ApplicationController

  def index
    binding.pry
    resp = Faraday.get "https://api.github.com/user" do |req|
      req.headers['Authorization'] = "token " + session[:token]
    end
    
  end

end
