require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  let(:post) { FactoryGirl.create(:post) }

  context 'GET index' do

    it 'assigns a max of three posts to @posts' do
      4.times do
        FactoryGirl.create(:post)
      end

      get :index

      expect(assigns(:posts).size).to eq(3)
    end

  end

  context 'GET show' do

    it 'assigns the requested post as @post' do
      get :show, {id: post.to_param}

      expect(assigns(:post)).to eq(post)
    end

  end

end
