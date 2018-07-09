#Direk Kart saklama servis çağrısının yapıldığı sınıfı temsil etmektedir.
#Marketplacereleasepaymentrequest sınıfına ait değişkenler bu sınıf içerisinde toplanmıştır.
#Xml formatı oluşturularak settings sınıfı içerisinde bulunan baseurl adresine post edilmektedir.
#xml  çağrısı sonucunda oluşan xml çıktısı sonuç olarak dönderilmektedir.
class Tokenizeccrequest
    attr_accessor :ServiceType
    attr_accessor :OperationType
    attr_accessor :Token
    attr_accessor :CreditCardNumber
    attr_accessor :NameSurname
    attr_accessor :ExpiryDate
    attr_accessor :CVV
    attr_accessor :ValidityPeriod
    attr_accessor :CustomerId
    attr_accessor :IPAddress
    attr_accessor :Port
 
    
    def execute(req,settings)
        result= Core::HttpClient::post(settings.BaseUrl,self.to_xml(req));
       if result != nil
         return result
       else
         return "Result is NIL"
       end
     end
     def to_xml(req)
        xml_string= "<?xml version='1.0' encoding='UTF-8' ?>
        <WIRECARD>
        <ServiceType>"+req.ServiceType+"</ServiceType>
        <OperationType>"+req.OperationType+"</OperationType>
        <Token>
            <UserCode>"+req.Token.UserCode+"</UserCode>
            <Pin>"+req.Token.Pin+"</Pin>
        </Token>
        <CreditCardNumber>"+req.CreditCardNumber+"</CreditCardNumber>
        <NameSurname>"+req.NameSurname+"</NameSurname>
        <ExpiryDate>"+req.ExpiryDate+"</ExpiryDate>
        <CVV>"+req.CVV+"</CVV>
        <CustomerId>"+req.CustomerId+"</CustomerId>
        <ValidityPeriod>"+req.ValidityPeriod+"</ValidityPeriod>
        <IPAddress>"+req.IPAddress+"</IPAddress>
        <Port>"+req.Port+"</Port>
        </WIRECARD>"
        p xml_string
        return xml_string
     end
     
end
