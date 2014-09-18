require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  let(:post) { FactoryGirl.create(:post) }

  context 'GET index' do

    it 'assigns all posts as @posts' do
      get :index

      expect(assigns(:posts)).to eq([post])
    end

  end

  context 'GET show' do

    it 'assigns the requested post as @post' do
      get :show, {id: post.to_param}

      expect(assigns(:post)).to eq(post)
    end

  end

end
