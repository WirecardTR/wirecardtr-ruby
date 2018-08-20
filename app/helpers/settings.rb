#Tüm servislerde ortak olarak kullanılan token bilgileri için gerekli olan UserCode ve Pin değişkenleri bu sınıf içerisinde tutulmaktadır.
# Xml servis çağrılarında ortak olarak kullanılan url bilgisi bu sınıf içerisinde tutulmaktadir.
class Settings
    attr_accessor :UserCode #//"User Code - başvurunuz sırasında size wirecard tarafından verilen usercode bilgisini kullanınız.",
    attr_accessor :Pin #"Pin  - başvurunuz sırasında size wirecard tarafından verilen Pin bilgisini kullanınız.",
    attr_accessor :BaseUrl #WireCard web servisleri API url'lerinin adresini temsil etmektedir.
    attr_accessor :HashKey #Wirecard tarafından size verilen HashKey bilgisidir.
      # Nesnenin üretilmesi
      def initialize()

      end

end
