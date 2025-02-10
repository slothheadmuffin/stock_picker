
def stock_picker(prices)
  stock_price_buy = prices[0]
  stock_day_buy = 0
  stock_day_sell = 0
  max_profit = 0
  day_buy=0
  invest = []

  prices.each_with_index do |price, day|
      if price < stock_price_buy
          stock_price_buy = price
          day_buy = day
      end

      profit = price - stock_price_buy
      if profit > max_profit #&& stock_day_buy < day
          max_profit = profit
          stock_day_buy=day_buy
          stock_day_sell = day
      end
  end

  if max_profit > 0
      invest.push(stock_day_buy, stock_day_sell)
  else
      invest = []
  end

  p invest
end

# prix = [17, 3, 6, 9, 15, 8, 6, 1, 10]
# stock_picker(prix)
