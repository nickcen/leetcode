def max_profit(prices)
  return 0 if prices.empty?
  low = prices[0]
  cur = prices[0]
  profit = 0
  prices.each do |price|
    if cur <= price
      
      cur = price
    else

      profit += cur - low
      low = price
      cur = price
    end
  end

  profit += cur - low
end