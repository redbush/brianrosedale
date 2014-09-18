require 'rails_helper'

RSpec.describe 'Errors', type: :routing do

  context '404' do

    it 'GET routes to errors#show' do
      expect(get: '/404').to route_to(
                                 controller: 'errors',
                                 action: 'show',
                                 status: '404'
                             )
    end

    it 'POST routes to errors#show' do
      expect(post: '/404').to route_to(
                                  controller: 'errors',
                                  action: 'show',
                                  status: '404'
                              )
    end

  end

  context '500' do

    it 'GET routes to errors#show' do
      expect(get: '/500').to route_to(
                                 controller: 'errors',
                                 action: 'show',
                                 status: '500'
                             )
    end

    it 'POST routes to errors#show' do
      expect(post: '/500').to route_to(
                                  controller: 'errors',
                                  action: 'show',
                                  status: '500'
                              )
    end

  end

end
