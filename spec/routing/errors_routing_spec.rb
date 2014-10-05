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

    it 'GET 401 routes to errors#show' do
      expect(get: '/401').to route_to(
                                 controller: 'errors',
                                 action: 'show',
                                 status: '401'
                             )
    end

    it 'GET 422 routes to errors#show' do
      expect(get: '/422').to route_to(
                                 controller: 'errors',
                                 action: 'show',
                                 status: '422'
                             )
    end

    it 'GET 500 routes to errors#show' do
      expect(get: '/500').to route_to(
                                 controller: 'errors',
                                 action: 'show',
                                 status: '500'
                             )
    end

  end

end
