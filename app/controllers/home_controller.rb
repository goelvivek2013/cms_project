class HomeController < ApplicationController
  require "oauth2"
  def index
  	@profile = current_user.employ
  	

	client = OAuth2::Client.new(
	  "98359272074-9a6gcmvf86on47i1bu936pickdukdai7.apps.googleusercontent.com",
	  "hHazErulh8NiKRr7qdVSE78h", 
	  :authorize_url => "/oauth2/authorize", 
	  :token_url => "/oauth2/access_token", 
	  :site => "https://www.googleapis.com/admin/"
	)

	puts client.auth_code.authorize_url(:redirect_uri => "http://localhost:3000")

	code = gets.chomp
	puts "the code is #{code}"

	token = client.auth_code.get_token(code,:redirect_uri => "http://localhost:3000")

	token = OAuth2::AccessToken.new(client, token.token, {
	  :mode => :query,
	  :param_name => "oauth_token",
	})

	response = token.get('https://www.googleapis.com/admin/directory/v1/groups/dipanshu-group/members')

	puts response.body

# 	require 'oauth2'
# 	client = OAuth2::Client.new('645267522106.apps.googleusercontent.com', 'HgWirYGuhCiKHxdYOIcMiFxN', :site => 'https://www.googleapis.com/auth/admin.directory.group')

# 	client.auth_code.authorize_url(:redirect_uri => 'http://localhost:3000')
# # => "https://example.org/oauth/authorization?response_type=code&client_id=client_id&redirect_uri=http://localhost:8080/oauth2/callback"

# 	token = client.auth_code.get_token('authorization_code_value', :redirect_uri => 'http://localhost:3000')
# 	puts "the token is #{token}"
# 	response = token.get('/api/resource', :params => { 'query_foo' => 'bar' })
# 	response.class.name
	end

  
end
