require 'minitest/autorun'
require_relative '../lib/three_sum'

describe 'returns indexs for matched num' do
  describe '#three_sum' do
    it 'returns two arrs' do
      _(three_sum([-1,0,1,2,-1,-4])).must_equal [[-1,-1,2],[-1,0,1]]
    end

    it 'should be returns [] when the arr is empty' do
      _(three_sum([])).must_equal []
    end

    it 'should be returns [] when the arr only contains 0' do
      _(three_sum([0])).must_equal []
    end

    it 'should be returns [] when all item more than 0' do
      _(three_sum([1,3,5,6,9])).must_equal []
    end
  end

  describe '#three_sum_v2' do
    it 'returns two arrs' do
      _(three_sum_v2([-1,0,1,2,-1,-4])).must_equal [[-1,-1,2],[-1,0,1]]
    end

    it 'should be returns [] when the arr is empty' do
      _(three_sum_v2([])).must_equal []
    end

    it 'should be returns [] when the arr only contains 0' do
      _(three_sum_v2([0])).must_equal []
    end

    it 'should be returns [] when all item more than 0' do
      _(three_sum_v2([1,3,5,6,9])).must_equal []
    end
  end
end

