#abonelik listeleme soap servis çağrısının yapıldığı sınıfı temsil etmektedir.
# soap çağrısı sonucunda oluşan xml çıktısı sonuç olarak dönderilmektedir.
class Selectsubscriber
    
    def execute(input , token)
        client = Savon.client(wsdl: 'https://www.wirecard.com.tr/services/SubscriberManagementService.asmx?WSDL', ssl_verify_mode: :none, ssl_version: :TLSv1)   
       
        response=  client.call(:select_subscriber, message: {
            'input' => model_to_hash(input),
            'token' =>  model_to_hash(token)
            })
        return response.to_xml
    end
    def model_to_hash(model_name)
        hash = model_name.instance_variables.each_with_object({}) { |var, hash| hash[var.to_s.delete("@")] = model_name.instance_variable_get(var) }
    end
    end