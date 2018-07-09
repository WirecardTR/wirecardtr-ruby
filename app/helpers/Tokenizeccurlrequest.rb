#Url Yöntemi ile Kart saklama servis çağrısının yapıldığı sınıfı temsil etmektedir.
#Marketplacereleasepaymentrequest sınıfına ait değişkenler bu sınıf içerisinde toplanmıştır.
#Xml formatı oluşturularak settings sınıfı içerisinde bulunan baseurl adresine post edilmektedir.
#xml  çağrısı sonucunda oluşan xml çıktısı sonuç olarak dönderilmektedir.
class Tokenizeccurlrequest
    attr_accessor :ServiceType
    attr_accessor :OperationType
    attr_accessor :Token
    attr_accessor :ValidityPeriod
    attr_accessor :CustomerId
    attr_accessor :IPAddress
    attr_accessor :ErrorURL
    attr_accessor :SuccessURL
 
    
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
        <CustomerId>"+req.CustomerId+"</CustomerId>
        <ValidityPeriod>"+req.ValidityPeriod+"</ValidityPeriod>
        <IPAddress>"+req.IPAddress+"</IPAddress>
        <ErrorURL>"+req.ErrorURL+"</ErrorURL>
        <SuccessURL>"+req.SuccessURL+"</SuccessURL>
        </WIRECARD>"
        p xml_string
        return xml_string
     end
     
end
