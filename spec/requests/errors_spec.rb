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

    it 'direct /errors/404' do
      get '/errors/404'

      expect(response.status).to be(404)
      expect(response).to render_template('404')
    end

    it 'JSON direct /errors/404' do
      get '/errors/404', format: :json

      expect(response.status).to be(404)
      expect(JSON.parse(response.body)).to be_empty
    end

  end

  context '500' do

    it 'direct /errors/500' do
      get '/errors/500'

      expect(response.status).to be(500)
      expect(response).to render_template('500')
    end

    it 'JSON direct /errors/500' do
      get '/errors/500', format: :json

      expect(response.status).to be(500)
      expect(JSON.parse(response.body)).to be_empty
    end

  end

  context '401' do

    it 'direct /errors/401' do
      get '/errors/401'

      expect(response.status).to be(401)
      expect(response).to render_template('401')
    end

    it 'JSON direct /errors/401' do
      get '/errors/401', format: :json

      expect(response.status).to be(401)
      expect(JSON.parse(response.body)).to be_empty
    end

  end

  context '422' do

    it 'direct /errors/422' do
      get '/errors/422'

      expect(response.status).to be(422)
      expect(response).to render_template('422')
    end

    it 'JSON direct /errors/422' do
      get '/errors/422', format: :json

      expect(response.status).to be(422)
      expect(JSON.parse(response.body)).to be_empty
    end

  end

end
