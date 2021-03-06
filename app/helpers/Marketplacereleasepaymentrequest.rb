#Pazaryeri  ödeme onay servis çağrısının yapıldığı sınıfı temsil etmektedir.
#Marketplacereleasepaymentrequest sınıfına ait değişkenler bu sınıf içerisinde toplanmıştır.
#Xml formatı oluşturularak settings sınıfı içerisinde bulunan baseurl adresine post edilmektedir.
#xml  çağrısı sonucunda oluşan xml çıktısı sonuç olarak dönderilmektedir.
class Marketplacereleasepaymentrequest
    attr_accessor :ServiceType
    attr_accessor :OperationType
    attr_accessor :Token
    attr_accessor :SubPartnerId
    attr_accessor :CommissionRate
    attr_accessor :MPAY
    attr_accessor :OrderId
    attr_accessor :Description

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
        <SubPartnerId>"+req.SubPartnerId+"</SubPartnerId>
        <CommissionRate>"+req.CommissionRate+"</CommissionRate>
        <MPAY>"+req.MPAY+"</MPAY>
        <OrderId>"+req.OrderId+"</OrderId>
        <Description>"+req.Description+"</Description>
        </WIRECARD>"
        return xml_string
     end
end