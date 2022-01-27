require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

crypto_name = page.xpath('/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[@class="cmc-table-row"]/td[3]')
crypto_name2 = crypto_name.collect(&:text)

crypto_value = page.xpath('/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[@class="cmc-table-row"]/td[5]')
crypto_value2 = crypto_value.collect(&:text)

hash = Hash[crypto_name2.zip(crypto_value2)]

#puts hash

tableau = []
for n in (0...crypto_name2.length) do
    hash = Hash.new
    hash[crypto_name2[n]]= crypto_value2[n]
    tableau.push(hash)
end

puts tableau


