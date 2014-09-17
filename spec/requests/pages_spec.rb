require 'rails_helper'

RSpec.describe 'Pages', type: :request do

  context 'GET /home' do

    it 'returns success' do
      get '/home'

      expect(response.status).to be(200)
      expect(response).to render_template(:home)
    end

  end

end
