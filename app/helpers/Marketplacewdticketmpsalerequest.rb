#Pazaryeri ortak ödeme 3d secure ile ödeme servis çağrısının yapıldığı sınıfı temsil etmektedir.
#Marketplacewdticketmpsalerequest sınıfına ait değişkenler bu sınıf içerisinde toplanmıştır.
#Xml formatı oluşturularak settings sınıfı içerisinde bulunan baseurl adresine post edilmektedir.
#xml  çağrısı sonucunda oluşan xml çıktısı sonuç olarak dönderilmektedir.
class Marketplacewdticketmpsalerequest
    attr_accessor :ServiceType
    attr_accessor :OperationType
    attr_accessor :Token
    attr_accessor :MPAY
    attr_accessor :CurrencyCode
    attr_accessor :ExtraParam
    attr_accessor :Description
    attr_accessor :ErrorURL
    attr_accessor :SuccessURL
    attr_accessor :Price
    attr_accessor :CommissionRate
    attr_accessor :SubPartnerId
    attr_accessor :PaymentContent
    attr_accessor :CustomerInfo    
    attr_accessor :Language 
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
        <CustomerInfo>
        <CustomerName>"+req.CustomerInfo.CustomerName+"</CustomerName>
        <CustomerSurname>"+req.CustomerInfo.CustomerSurname+"</CustomerSurname>
        <CustomerEmail>"+req.CustomerInfo.CustomerEmail+"</CustomerEmail>
    </CustomerInfo>
        <Language>"+req.Language+"</Language>
            <MPAY>"+req.MPAY+"</MPAY>
            <CurrencyCode>"+req.CurrencyCode+"</CurrencyCode>
            <ExtraParam>"+req.ExtraParam+"</ExtraParam>
            <Description>"+req.Description+"</Description>
            <ErrorURL>"+req.ErrorURL+"</ErrorURL>
            <SuccessURL>"+req.SuccessURL+"</SuccessURL>
            <CommissionRate>"+req.CommissionRate+"</CommissionRate>
            <Price>"+req.Price+"</Price>
            <SubPartnerId>"+req.SubPartnerId+"</SubPartnerId>
            <PaymentContent>"+req.PaymentContent+"</PaymentContent>
        </WIRECARD>"
        p xml_string
        return xml_string
     end
     
end
