#Pazaryeri oluşturma ve güncelleme xml servis çağrısının yapıldığı sınıfı temsil etmektedir.
#Marketplaceaddorupdaterequest sınıfına ait değişkenler bu sınıf içerisinde toplanmıştır.
#Xml formatı oluşturularak post settings sınıfı içerisinde bulunan baseurl adresine post edilmektedir.
#Pazaryeri oluşturma ve güncelleme için 2 adet metod tanımlanmıştır. 
#xml  çağrısı sonucunda oluşan xml çıktısı sonuç olarak dönderilmektedir.

class Marketplaceaddorupdaterequest
    attr_accessor :ServiceType
    attr_accessor :OperationType
    attr_accessor :Token
    attr_accessor :UniqueId
    attr_accessor :SubPartnerType
    attr_accessor :Name
    attr_accessor :Contactinfo
    attr_accessor :Financialinfo
    attr_accessor :SubPartnerId

    def executeAddSubPartner(req,settings)
        result= Core::HttpClient::post(settings.BaseUrl,self.to_xml_addsubpartner(req));
       if result != nil
         return result
       else
         return "Result is NIL"
       end
     end
     def executeUpdateSubPartner(req,settings)
        result= Core::HttpClient::post(settings.BaseUrl,self.to_xml_updatesubpartner(req));
       if result != nil
         return result
       else
         return "Result is NIL"
       end
     end
     def to_xml_addsubpartner(req)
        xml_string= "<?xml version='1.0' encoding='UTF-8' ?>
        <WIRECARD>
        <ServiceType>"+req.ServiceType+"</ServiceType>
        <OperationType>"+req.OperationType+"</OperationType>
        <Token>
            <UserCode>" +req.Token.UserCode+"</UserCode>
            <Pin>" +req.Token.Pin+"</Pin>
        </Token>
        <UniqueId>"+req.UniqueId+"</UniqueId>
        <SubPartnerType>"+req.SubPartnerType+"</SubPartnerType>
        <Name>"+req.Name+"</Name>
        <ContactInfo>
            <Country>"+req.Contactinfo.Country+"</Country>
            <City>"+req.Contactinfo.City+"</City>
            <Address>"+req.Contactinfo.Address+"</Address>
            <BusinessPhone>"+req.Contactinfo.BusinessPhone+"</BusinessPhone>
            <MobilePhone>"+req.Contactinfo.MobilePhone+"</MobilePhone>
        </ContactInfo>
        <FinancialInfo>
            <IdentityNumber>"+req.Financialinfo.IdentityNumber+"</IdentityNumber>
            <TaxOffice>"+req.Financialinfo.TaxOffice+"</TaxOffice>
            <TaxNumber>"+req.Financialinfo.TaxNumber+"</TaxNumber>
            <BankName>"+req.Financialinfo.BankName+"</BankName>
            <IBAN>"+req.Financialinfo.IBAN+"</IBAN>
            <AccountName>"+req.Financialinfo.AccountName+"</AccountName>
	    </FinancialInfo>
        </WIRECARD>"
        p xml_string
        return xml_string
     end
     def to_xml_updatesubpartner(req)
        xml_string= "<?xml version='1.0' encoding='UTF-8' ?>
        <WIRECARD>
        <ServiceType>"+req.ServiceType+"</ServiceType>
        <OperationType>"+req.OperationType+"</OperationType>
        <Token>
            <UserCode>" +req.Token.UserCode+"</UserCode>
            <Pin>" +req.Token.Pin+"</Pin>
        </Token>
        <UniqueId>"+req.UniqueId+"</UniqueId>
        <SubPartnerId>"+req.SubPartnerId+"</SubPartnerId>
        <SubPartnerType>"+req.SubPartnerType+"</SubPartnerType>
        <Name>"+req.Name+"</Name>
        <ContactInfo>
            <Country>"+req.Contactinfo.Country+"</Country>
            <City>"+req.Contactinfo.City+"</City>
            <Address>"+req.Contactinfo.Address+"</Address>
            <BusinessPhone>"+req.Contactinfo.BusinessPhone+"</BusinessPhone>
            <MobilePhone>"+req.Contactinfo.MobilePhone+"</MobilePhone>
        </ContactInfo>
        <FinancialInfo>
            <IdentityNumber>"+req.Financialinfo.IdentityNumber+"</IdentityNumber>
            <TaxOffice>"+req.Financialinfo.TaxOffice+"</TaxOffice>
            <TaxNumber>"+req.Financialinfo.TaxNumber+"</TaxNumber>
            <BankName>"+req.Financialinfo.BankName+"</BankName>
            <IBAN>"+req.Financialinfo.IBAN+"</IBAN>
            <AccountName>"+req.Financialinfo.AccountName+"</AccountName>
	    </FinancialInfo>
        </WIRECARD>"
        p xml_string
        return xml_string
     end

end

class Financialinfo
    attr_accessor :IdentityNumber
    attr_accessor :TaxOffice
    attr_accessor :TaxNumber
    attr_accessor :BankName
    attr_accessor :IBAN
    attr_accessor :AccountName
end

class Contactinfo
    attr_accessor :Country
    attr_accessor :City
    attr_accessor :Address
    attr_accessor :BusinessPhone
    attr_accessor :MobilePhone
end
