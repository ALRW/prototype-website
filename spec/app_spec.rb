require File.expand_path '../../server.rb', __FILE__
require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

describe 'Prototype App' do
    include Rack::Test::Methods
    
    def app() Sinatra::Application end
    
    it 'displays the homepage' do
        get '/'
        expect(last_response.status).to eq 200
    end
    
    it 'displays the company name' do
        get '/'
        expect(last_response.body).to include "Prototype Inc."
    end
    
    it 'displays the correct content' do 
        get '/'
        expect(last_response.body).to include "Home of the World's Best Prototypes"
    end
    
    it 'displays the mail link with the correct address' do
        get '/'
        expect(last_response.body).to include "<li id=\"mail\"><a href=\"mailto:example@example.com\"><span class=\"glyphicon glyphicon-envelope\"></span></a></li>"
    end
        
end