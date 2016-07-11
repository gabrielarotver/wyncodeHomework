require 'nokogiri'
require 'httparty'

begin
  print "\nPlease specify a VALID stock symbol to look for: "
  stock = gets.chomp.upcase

  url = "http://finance.yahoo.com/q?s=#{stock}"

  response = HTTParty.get url
  dom = Nokogiri::HTML(response.body)

end until (!dom.xpath("//span[@id='yfs_l84_#{stock.downcase}']").first.nil?)

  price = dom.xpath("//span[@id='yfs_l84_#{stock.downcase}']").first.inner_text
  close_price = dom.xpath("//td[@class='yfnc_tabledata1']").first.inner_text

  print "\n#{stock} Stock Price: = $#{price}\n"

  print "\n#{stock} Closing Price: $#{close_price}\n\n"
