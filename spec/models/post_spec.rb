require 'rails_helper'

RSpec.describe Post, type: :model do

  context 'validations' do

    it 'does not save when no title' do
      post = FactoryGirl.build(:post, title: '')

      expect(post).to_not be_valid
    end

    it 'does not save when no summary' do
      post = FactoryGirl.build(:post, summary: '')

      expect(post).to_not be_valid
    end

    it 'does not save when no content' do
      post = FactoryGirl.build(:post, content: '')

      expect(post).to_not be_valid
    end

  end

end
