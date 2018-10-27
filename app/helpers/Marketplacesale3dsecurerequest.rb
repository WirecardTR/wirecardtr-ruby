#Pazaryeri 3d secure ile ödeme servis çağrısının yapıldığı sınıfı temsil etmektedir.
#Marketplacereleasepaymentrequest sınıfına ait değişkenler bu sınıf içerisinde toplanmıştır.
#Xml formatı oluşturularak settings sınıfı içerisinde bulunan baseurl adresine post edilmektedir.
#xml  çağrısı sonucunda oluşan xml çıktısı sonuç olarak dönderilmektedir.
class Marketplacesale3dsecurerequest
    attr_accessor :ServiceType
    attr_accessor :OperationType
    attr_accessor :Token
    attr_accessor :Creditcardinfo
    attr_accessor :MPAY
    attr_accessor :CurrencyCode
    attr_accessor :ExtraParam
    attr_accessor :Description
    attr_accessor :IPAddress
    attr_accessor :Port
    attr_accessor :ErrorURL
    attr_accessor :SuccessURL
    attr_accessor :InstallmentCount
    attr_accessor :CommissionRate
    attr_accessor :SubPartnerId
    attr_accessor :PaymentContent
    attr_accessor :Cardtokenization
    
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
        <CreditCardInfo>
            <CreditCardNo>"+req.Creditcardinfo.CreditCardNo+"</CreditCardNo>
            <OwnerName>"+req.Creditcardinfo.OwnerName+"</OwnerName>
            <ExpireYear>"+req.Creditcardinfo.ExpireYear+"</ExpireYear>
            <ExpireMonth>"+req.Creditcardinfo.ExpireMonth+"</ExpireMonth>
            <Cvv>"+req.Creditcardinfo.Cvv+"</Cvv>
            <Price>"+req.Creditcardinfo.Price+"</Price>
        </CreditCardInfo>
        <CardTokenization>
            <RequestType>"+req.Cardtokenization.RequestType+"</RequestType>
            <CustomerId>"+req.Cardtokenization.CustomerId+"</CustomerId>
            <ValidityPeriod>"+req.Cardtokenization.ValidityPeriod+"</ValidityPeriod>
            <CCTokenId>"+req.Cardtokenization.CCTokenId+"</CCTokenId>
	    </CardTokenization>
            <MPAY>"+req.MPAY+"</MPAY>
            <CurrencyCode>"+req.CurrencyCode+"</CurrencyCode>
            <Port>"+req.Port+"</Port>
            <ExtraParam>"+req.ExtraParam+"</ExtraParam>
            <Description>"+req.Description+"</Description>
            <IPAddress>"+req.IPAddress+"</IPAddress>
            <Port>"+req.Port+"</Port>
            <ErrorURL>"+req.ErrorURL+"</ErrorURL>
            <SuccessURL>"+req.SuccessURL+"</SuccessURL>
            <InstallmentCount>"+req.InstallmentCount+"</InstallmentCount>
            <CommissionRate>"+req.CommissionRate+"</CommissionRate>
            <SubPartnerId>"+req.SubPartnerId+"</SubPartnerId>
            <PaymentContent>"+req.PaymentContent+"</PaymentContent>
        </WIRECARD>"
        p xml_string
        return xml_string
     end
     
end
