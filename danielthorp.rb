require 'sinatra/base'
require 'sinatra_more/markup_plugin'

class DanielThorp < Sinatra::Base
  register SinatraMore::MarkupPlugin
  enable :sessions
  set :session_scret, ENV["SESSION_SECRET"] || "abc123"

  get "/" do
    haml :index, layout: true
  end

end
