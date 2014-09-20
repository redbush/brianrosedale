require 'rails_helper'

RSpec.describe PostsHelper, type: :helper do

  context '#format_date' do

    it 'returns formats datetime' do
      dt = DateTime.new(2014, 9, 20)
      expected_datetime = '09/20/2014'

      expect(helper.format_datetime(dt)).to eq(expected_datetime)
    end

    it 'returns empty string when invalid date' do
      dt = 'baddate'
      expected_datetime = 'Unknown'

      expect(helper.format_datetime(dt)).to eq(expected_datetime)
    end

  end

end