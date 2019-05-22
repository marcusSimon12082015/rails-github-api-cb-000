class RepositoriesController < ApplicationController

  def index
    resp = Faraday.get "https://api.github.com/user" do |req|
      req.headers['Authorization'] = "token " + session[:token]
    end
    binding.pry
    body = JSON.parse(resp.body)
    @username = body["login"]
  end

end
