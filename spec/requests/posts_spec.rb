require 'rails_helper'

RSpec.describe 'Posts', type: :request do

  let(:post) { FactoryGirl.create(:post) }

  context 'GET /posts' do

    it 'returns success' do
      get posts_path

      expect(response.status).to be(200)
      expect(response).to render_template(:index)
    end

    it '/posts/page/1 returns success' do
      get 'posts/page/1'

      expect(response.status).to be(200)
      expect(response).to render_template(:index)
    end

  end

  context 'GET /posts/:id' do

    it 'returns success' do
      get post_path(post)

      expect(response.status).to be(200)
      expect(response).to render_template(:show)
    end

    it 'not found redirects to not found' do
      get post_path(123)

      expect(response.status).to eql(404)
      expect(response).to render_template('404')
    end

  end

  context 'GET /posts_redirect' do

    it 'redirects to posts' do
      get posts_redirect_path

      expect(response).to redirect_to(posts_path)
    end

  end

end
