require 'nokogiri'
require 'open-uri'

#def get_townhall_email(townhall_url) 
    pages_ville_Avernes = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))

    townhall_email_Avernes = pages_ville_Avernes.xpath('//main/section[2]/div/table/tbody/tr[4]/td[2]')
                                   
    townhall_email_Avernes_texte = townhall_email.collect(&:text)

#    puts townhall_email_Avernes_texte

#def get_townhall_urls 

    page_commune = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
    liste_communes = page_commune.xpath('//table')

    liste_communes_texte = liste_communes.collect(&:text)
    
    puts liste_communes_texte

