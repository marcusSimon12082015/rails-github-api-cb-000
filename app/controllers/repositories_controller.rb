class RepositoriesController < ApplicationController

  def index
    binding.pry
    resp = Faraday.get "https://api.github.com/user" do |req|
      req.params['token'] = session[:token]
    end
  end

end
