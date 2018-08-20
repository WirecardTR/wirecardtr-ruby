#Tüm servis çağrılarında kullanılan token bilgileri için userCode ve Pin bilgileri burada tanımlanır.
#Tüm xml servis çağrılarında kullanılacak olan baseurl bilgisi tutulmaktadır.
class ApplicationController < ActionController::Base
    @@settings=Settings.new
    @@settings.UserCode ="20923" #//"User Code - başvurunuz sırasında size wirecard tarafından verilen usercode bilgisini kullanınız.",
    @@settings.Pin ="535D7D1B5DA6407EB7F6" #"Pin  - başvurunuz sırasında size wirecard tarafından verilen Pin bilgisini kullanınız.",
    @@settings.BaseUrl = "https://www.wirecard.com.tr/SGate/Gate" #WireCard web servisleri API url'lerinin adresini temsil etmektedir.
    @@settings.HashKey = "Ce1!Bc*405e3" #W Wirecard tarafından size verilen HashKey bilgisidir.
end
