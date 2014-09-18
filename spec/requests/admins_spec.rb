require 'rails_helper'

RSpec.describe 'Admins', type: :request do

  context 'sessions' do

    it 'GET sign_in returns success' do
      get '/admins/sign_in'

      expect(response.status).to be(200)
    end

    it 'DELETE sign_out redirects' do
      delete '/admins/sign_out'

      expect(response.status).to be(302)
    end

  end

  context 'passwords' do

    it 'GET new returns success' do
      get '/admins/password/new'

      expect(response.status).to be(200)
    end

    it 'GET edit returns success' do

      get '/admins/password/edit', {reset_password_token: 'some-reset-token'}

      expect(response.status).to be(200)
    end

  end

  context 'unlock' do

    it 'GET new unlock returns success' do
      get '/admins/unlock/new'

      expect(response.status).to be(200)
    end

  end

end
