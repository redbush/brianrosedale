require 'rails_helper'

RSpec.describe 'Errors', type: :request do

  context '404' do

    it 'page not found' do
      get '/some/unknown/path'

      expect(response.status).to be(404)
      expect(response).to render_template('404')
    end

    it 'JSON page not found' do
      get '/some/unknown/path', format: :json

      expect(response.status).to be(404)
      response_body = JSON.parse(response.body)
      expect(response_body).to be_empty
    end

  end

  #TODO: How can I test 500?

end
