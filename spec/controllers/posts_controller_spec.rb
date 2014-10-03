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

    it 'sets current page in session' do
      get :index

      expect(session[:posts_page]).to_not be_nil
      expect(session[:posts_page]).to eql('http://test.host/posts')
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

  context 'previous post page' do

    it 'redirects to previous post page' do
      posts_page = 'posts/page/1'
      session[:posts_page] = posts_page

      get :posts_redirect

      expect(response).to redirect_to(posts_page)
    end

    it 'redirects to previous posts page when session is null' do
      get :posts_redirect

      expect(response).to redirect_to(posts_path)
    end

  end

end
