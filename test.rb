require 'nokogiri'
require 'open-uri'

document = Nokogiri::XML(File.read('server.xml'))
template = Nokogiri::XSLT(File.read('template.xslt'))

transformed_document = template.transform(document)
File.open('output.html', 'w').write(transformed_document)
