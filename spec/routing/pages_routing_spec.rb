require 'rails_helper'

RSpec.describe 'Pages', type: :routing do

  context 'routing' do

    it 'routes to pages#home' do
      expect(get: '/home').to route_to(
                                 controller: 'pages',
                                 action: 'home'
                             )
    end

  end

end
