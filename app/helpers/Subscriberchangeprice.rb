class Subscriberchangeprice
    attr_accessor :ServiceType
    attr_accessor :OperationType
    attr_accessor :Token
    attr_accessor :Price
    attr_accessor :SubscriberId
    attr_accessor :ValidFrom
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
            <Description>"+req.Description+"</Description>
            <Price>"+req.Price+"</Price>
            <SubscriberId>"+req.SubscriberId+"</SubscriberId>
            <ValidFrom>"+req.ValidFrom+"</ValidFrom>
            
        </WIRECARD>"
        p xml_string
        return xml_string
     end
     
end