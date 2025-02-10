require 'spec_helper'
require_relative '../stocks'

RSpec.describe'Stock Picker' do
  describe 'Buys stock before selling' do
    prices=[1,2,3,4,5,6,7]
    it 'outputs 2 stocks' do
      expect(stock_picker(prices)).to eq([0,6])
    end
  end

  describe 'Buys cheaper stock sells more expensive' do
    prices=[1,2,3,4,5,6,7]
    it 'outputs 2 stocks' do
      expect(stock_picker(prices)).to eq([0,6])
    end
  end

  describe 'Respect order of days' do
    prices=[17,3,6,9,15,8,6,1,10]
    it 'outputs 2 stocks' do
      expect(stock_picker(prices)).to eq([1,4])
    end
  end
  
  describe 'Complex case' do
    prices = [10, 7, 5, 8, 11, 9, 1, 6]
    it 'outputs the best buy/sell days' do
      expect(stock_picker(prices)).to eq([2, 4])
    end
  end
  
  describe 'same prices' do
    prices = [5, 5, 5, 5]
    it 'outputs no transactions' do
      expect(stock_picker(prices)).to eq([])
    end
  end
  describe 'decreasing prices' do
    prices = [7, 6, 5, 5, 4]
    it 'outputs no transactions' do
      expect(stock_picker(prices)).to eq([])
    end
  end
  
  describe 'one day' do
    prices = [1]
    it 'outputs no transactions' do
      expect(stock_picker(prices)).to eq([])
    end
  end
  
end
