require_relative './lib/loan_creator_web'
require 'test/unit'
require 'rack/test'

class LoanCreatorWebTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_homepage
    get '/'
    assert last_response.ok?
  end
end
