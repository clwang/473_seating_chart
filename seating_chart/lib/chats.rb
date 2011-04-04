require 'rubygems'
require 'pusher'
require "sinatra/base"


Pusher.app_id = "4815"
Pusher.key    = "dfc37692cce3244d3b5a"
Pusher.secret = "e08f6cbb6194db1ba54f"

class Chats < Sinatra::Base
  
    set :root, File.expand_path("../..", __FILE__)

    get "/" do
      erb :index
    end

    post "/" do
      if params[:message].nil? ||
          /\A\s*\Z/ =~ params[:message]
        halt 400
      end

      Gumflap.push(params[:message])
      204
    end

    def self.push message
      Pusher["test_channel"].trigger "add_line", message
    end
  end

    
   #   Pusher['test_channel'].trigger('add_line', @update)

 