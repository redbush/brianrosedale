require 'rails_helper'

RSpec.describe PostsController, type: :controller do

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

    before(:each) do
      @post_title = 'my-cool-title'
      @post = FactoryGirl.create(:post, title: @post_title)
    end

    it 'assigns the requested post as @post' do
      get :show, {id: @post.id}

      expect(assigns(:post)).to eq(@post)
    end

    it 'finds by slug' do
      get :show, {id: @post.slug}

      expect(assigns(:post)).to eq(@post)
    end

    it 'finds by updated slug' do
      # act
      new_title = 'new-slugged-title'
      @post.update(title: new_title)

      get :show, {id: new_title}
      expect(assigns(:post)).to eq(@post)
    end

    it 'finds by old slug' do
      new_title = 'some-new-slugged-title'

      # act
      @post.update(title: new_title)

      get :show, {id: @post_title}
      expect(assigns(:post)).to eq(@post)
    end

  end

end
