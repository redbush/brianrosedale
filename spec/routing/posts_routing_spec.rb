require 'rails_helper'

RSpec.describe PostsController, type: :routing do

  context 'routing' do

    it '/posts routes to #index' do
      expect(get: '/posts').to route_to('posts#index')
    end

    it '/posts/page/1 routes to #index' do
      expect(get: '/posts/page/1').to route_to('posts#index', page: '1')
    end

    it 'routes to #show' do
      expect(get: '/posts/1').to route_to('posts#show', id: '1')
    end

    it 'routes to #posts_redirect' do
      expect(get: '/posts_redirect').to route_to('posts#posts_redirect')
    end

  end

end
