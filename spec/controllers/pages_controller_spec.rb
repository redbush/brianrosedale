require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  context 'GET home' do

    it 'returns http success' do
      get :home

      expect(response).to be_success
    end

  end

end
