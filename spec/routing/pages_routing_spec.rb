require 'rails_helper'

RSpec.describe 'Pages', type: :routing do

  context 'routing' do

    it '/home routes to pages#home' do
      expect(get: '/home').to route_to(
                                 controller: 'pages',
                                 action: 'home'
                             )
    end

    it '/work routes to pages#work' do
      expect(get: '/work').to route_to(
                                  controller: 'pages',
                                  action: 'work'
                              )
    end

  end

end
