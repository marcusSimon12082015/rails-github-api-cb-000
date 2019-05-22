class RepositoriesController < ApplicationController

  def index
    resp = Faraday.get "https://api.github.com/user" do |req|
      req.params['token'] = session[:token]
    end
    pry
  end

end
