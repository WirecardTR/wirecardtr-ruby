module Core

require "rexml/document"


class Helper

	#Verilen input değerinin xml şeklinde çıktısının alınmasını sağlar.
    def self.formatXMLOutput(input)
      xml = REXML::Document.new(input)
      formatter = REXML::Formatters::Pretty.new
      formatter.compact = true
      output = ""
      formatter.write(xml, output);
      return output
    end
end

class HttpClient
	

	  #parametre olarak verilen url ve content bilgilerini kullanarak ilgili url adresine post işleminde bulunmasını sağlayan fonksiyonu temsil eder.
      def self.post(url, content)
        puts "---IN HTTP POST---"
        puts "URL: " + url
        puts "REQUEST\n"
        puts 
          response = RestClient.post(url, content) 
        if response == nil
          puts "RESPONSE IS NIL";
        else
          puts "RESPONSE\n" + response;
        end
        puts "---HTTP POST OUT---"
        return response.force_encoding("UTF-8")
      end
 end

end
