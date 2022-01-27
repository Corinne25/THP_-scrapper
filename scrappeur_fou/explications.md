L'analyse des documents HTML ressemble à ceci:

	doc = Nokogiri::HTML(html_document)

Ces deux fonctions prendront un objet IO ou un objet String. Étant donné que les deux formes acceptent les objets IO, nous pouvons même alimenter l'open-uri directement à Nokogiri comme ceci:

	doc = Nokogiri::HTML(open("http://www.google.com/search?q=doughnuts"))

Nokogiri convertit les documents HTML et XML en une arborescence de données.

Par exemple, un document HTML qui ressemble à ceci:

	<html>
	  <head>
	    <title>Bonjour!</title>
	  </head>
	  <body id ="uniq">
	    <h1>Bonjour le monde!</h1>
	  </body>
	</html>

page = Nokogiri::HTML(ouvert("index.html")) met la page.classeee   # => Nokogiri::HTML::Document

Le Nokogiri::HTML construct takes in the opened file's contents and wraps it in a special Nokogiri data object.

exiger «rubygemes»
exiger 'nokogiri'
exiger «open-uri»page = Nokogiri::HTML(ouvert("http://en.wikipedia.org/")) met la page.classeee   # => Nokogiri::HTML::Document
 
 Quoi open-uri does for us is encapsulate all the work of making a HTTP request into the open method, making the operation as simple as as opening a file on our own hard drive.

