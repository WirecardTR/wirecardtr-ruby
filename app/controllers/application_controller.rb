#Tüm servis çağrılarında kullanılan token bilgileri için userCode ve Pin bilgileri burada tanımlanır.
#Tüm xml servis çağrılarında kullanılacak olan baseurl bilgisi tutulmaktadır.
class ApplicationController < ActionController::Base
    @@settings=Settings.new
    @@settings.UserCode ="" #//"User Code - başvurunuz sırasında size wirecard tarafından verilen usercode bilgisini kullanınız.",
    @@settings.Pin ="" #"Pin  - başvurunuz sırasında size wirecard tarafından verilen Pin bilgisini kullanınız.",
    @@settings.BaseUrl = "https://www.wirecard.com.tr/SGate/Gate" #WireCard web servisleri API url'lerinin adresini temsil etmektedir.
   
end
