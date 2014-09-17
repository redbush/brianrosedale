require 'rails_helper'

RSpec.describe 'Pages', type: :routing do

  context 'GET /home' do

    it 'routes to pages#home' do
      expect(get: '/home').to route_to(
                                 controller: 'pages',
                                 action: 'home'
                             )
    end

  end

end
