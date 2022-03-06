require 'minitest/autorun'
require_relative '../lib/two_sum'

describe 'returns indexs for matched num' do
  describe '#two_sum' do
    it 'returns indexes [0, 1]' do
      _(two_sum([3,3], 6)).must_equal [0,1]
    end

    it 'returns indexes [0,1]' do
      _(two_sum([2,7,11,15], 9)).must_equal [0,1]
    end
  end

  describe '#two_sum_v2' do
    it 'returns indexes [0, 1]' do
      _(two_sum_v2([3,3], 6)).must_equal [1,0]
    end

    it 'returns indexes [0, 1]' do
      _(two_sum_v2([2,7,11,15], 9)).must_equal [0,1]
    end
  end
end

