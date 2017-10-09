require File.expand_path '../../server.rb', __FILE__
require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

describe 'Prototype App' do
    include Rack::Test::Methods
    
    def app() Sinatra::Application end
    
    before(:all) do
        get '/'
    end
    
    def body
        last_response.body
    end
    
    it 'displays the homepage' do
        expect(last_response.status).to eq 200
    end
    
    it 'displays the company name' do
        expect(body).to include "Prototype Inc."
    end
    
    it 'displays the correct content' do 
        expect(body).to include "Home of the World's Best Prototypes"
    end
    
    describe 'mailto link' do
        
        it 'is right justified on the navigation bar' do
            expect(body).to include "<ul class=\"nav navbar-nav navbar-right\">"
        end
        
        it 'displays the mail link with the correct address' do
            expect(body).to include "<li id=\"mail\"><a href=\"mailto:example@example.com\"><span class=\"glyphicon glyphicon-envelope\"></span></a></li>"
        end
        
    end
       
end