require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  it 'GET home returns http success' do
    get :home

    expect(response).to be_success
  end

  it 'GET work returns http success' do
    get :work

    expect(response).to be_success
  end

end
