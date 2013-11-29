require 'rexml/document'

dict = REXML::Document.new(open("ユーザ辞書.plist"))

dict.elements.each('plist/array/dict') do |element|

	phrase   = element.elements[2].text
	shortcut = element.elements[4].text 

	printf("\"%s\",\"%s\",\"無品詞\"\n", shortcut, phrase)

end
