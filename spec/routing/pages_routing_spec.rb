require 'rails_helper'

RSpec.describe 'Pages', type: :routing do

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

  it '/about routes to pages#about' do
    expect(get: '/about').to route_to(
                                 controller: 'pages',
                                 action: 'about'
                             )
  end

end
