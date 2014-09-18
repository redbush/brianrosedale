require 'rails_helper'

RSpec.describe 'Errors', type: :routing do

  context 'routing' do

    it 'GET 404 routes to errors#show' do
      expect(get: '/404').to route_to(
                                 controller: 'errors',
                                 action: 'show',
                                 status: '404'
                             )
    end

    it 'POST 404 routes to errors#show' do
      expect(post: '/404').to route_to(
                                  controller: 'errors',
                                  action: 'show',
                                  status: '404'
                              )
    end

    it 'GET 500 routes to errors#show' do
      expect(get: '/500').to route_to(
                                 controller: 'errors',
                                 action: 'show',
                                 status: '500'
                             )
    end

    it 'POST 500 routes to errors#show' do
      expect(post: '/500').to route_to(
                                  controller: 'errors',
                                  action: 'show',
                                  status: '500'
                              )
    end

  end

end
