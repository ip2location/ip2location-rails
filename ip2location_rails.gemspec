Gem::Specification.new do |s|
    s.name = 'ip2location_rails'
    s.version = '1.0.0'
    s.required_ruby_version = '>= 2.5.0'
    s.require_paths = ["lib"]
    s.authors = ["ip2location"]
    s.email = ["support@ip2location.com"]
    s.description = "The official IP2Location Ruby on Rails library to geolocate an IP address. You can lookup for country, region, district, city, latitude and longitude, ZIP/Postal code, time zone, Internet Service Provider (ISP) or company name, domain name, net speed, area code, weather station code, weather station name, mobile country code (MCC), mobile network code (MNC) and carrier brand, elevation, usage type, address type, IAB category and ASN from an IP address. Supported both IPv4 and IPv6 lookup."
    s.summary = "IP2Location Ruby on Rails library"
    s.homepage = 'https://www.ip2location.com'
    s.licenses = ["MIT"]
    s.files = [
        "LICENSE.txt",
        "Gemfile",
        "README.md",
        "ip2location_rails.gemspec",
        "lib/ip2location_rails.rb",
    ]
    s.add_runtime_dependency 'ip2location_ruby', '>= 8.7.3'
end
