require_relative "test_helper"

class TestApp < Rulers::Application
end

class RulersAppTest < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		TestApp.new
	end

	def test_request
		get "/"

		assert last_response.ok?
		body = last_response.body
		assert body ["Hello"]

	end

	def test_request2
		get "/"

		# The line “get “/”” above can be “post “/my/url”” if you prefer,
		 # or any other HTTP method and URL.

		assert last_response.ok?
		body = last_response.body
		assert body ["from"]
	end

end


