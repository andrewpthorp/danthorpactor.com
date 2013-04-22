require 'sinatra/base'
require 'sinatra_more/markup_plugin'

class DanielThorp < Sinatra::Base
  register SinatraMore::MarkupPlugin
  enable :sessions
  set :session_scret, ENV["SESSION_SECRET"] || "abc123"

  get "/" do
    @action = 'home'
    haml :index, layout: true
  end

  get "/reel" do
    @action = 'reel'
    haml :reel, layout: true
  end

  get "/photos" do
    @action = 'photos'
    haml :photos, layout: true
  end

  get "/contact" do
    @action = 'contact'
    haml :contact, layout: true
  end

end
