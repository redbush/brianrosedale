require 'rails_helper'

RSpec.describe 'Pages', type: :request do

  it 'GET home returns success' do
    get '/home'

    expect(response.status).to be(200)
    expect(response).to render_template(:home)
  end

  it 'GET work returns success' do
    get '/work'

    expect(response.status).to be(200)
    expect(response).to render_template(:work)
  end

end
