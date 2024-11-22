require 'ip2location_ruby'

class Ip2locationRails
    def initialize(ip_address)
        @ip_address = ip_address
        @i2l = Ip2location.new.open(Rails.configuration.ip2location_db_path)
    end

    def location
        @i2l.get_all(@ip_address)
    end

    def country_code
        location['country_short']
    end

    def country_name
        location['country_long']
    end

    def region
        location['region']
    end

    def city
        location['city']
    end

    def latitude
        location['latitude']
    end

    def longitude
        location['longitude']
    end

    def isp
        location['isp']
    end

    def domain
        location['domain']
    end

    def netspeed
        location['netspeed']
    end

    def areacode
        location['areacode']
    end

    def iddcode
        location['iddcode']
    end

    def timezone
        location['timezone']
    end

    def zipcode
        location['zipcode']
    end

    def weatherstationname
        location['weatherstationname']
    end

    def weatherstationcode
        location['weatherstationcode']
    end

    def mcc
        location['mcc']
    end

    def mnc
        location['mnc']
    end

    def mobilebrand
        location['mobilebrand']
    end

    def elevation
        location['elevation']
    end

    def usagetype
        location['usagetype']
    end

    def addresstype
        location['addresstype']
    end

    def category
        location['category']
    end

    def district
        location['district']
    end

    def asn
        location['asn']
    end

    def as
        location['as']
    end
end
