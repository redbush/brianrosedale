require 'rails_helper'

RSpec.describe 'Posts', type: :request do

  let(:post) { FactoryGirl.create(:post) }

  context 'GET /posts' do

    it 'returns success' do
      get posts_path

      expect(response.status).to be(200)
    end

    it '/posts/page/1 returns success' do
      get 'posts/page/1'

      expect(response.status).to be(200)
    end

  end

  context 'GET /posts/:id' do

    it 'returns success' do
      get post_path(post)

      expect(response.status).to be(200)
    end

  end

  context 'GET /posts_redirect' do

    it 'redirects to posts' do
      get '/posts_redirect'

      expect(response).to redirect_to(posts_path)
    end

  end

end
