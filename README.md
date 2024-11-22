# IP2Location Ruby on Rails Library
This is IP2Location Ruby on Rails library that enables the user to find the country, region or state, district, city, latitude and longitude, ZIP/Postal code, time zone, Internet Service Provider (ISP) or company name, domain name, net speed, area code, weather station code, weather station name, mobile country code (MCC), mobile network code (MNC) and carrier brand, elevation, usage type, address type, IAB category and ASN from IP address using IP2Location database.  The library reads the geo location information from **IP2Location BIN data** file.

Supported IPv4 and IPv6 address.

## INSTALLATION
1. Add this lines to your application's Gemfile:
```ruby
gem 'ip2location_ruby'
gem 'ip2location_rails'
```
2. Then execute it
```bash
$ bundle install
```
3. Open the preferred file in the `config/environments` directory. Add the following code to the chosen configuration file after the `Rails.application.configure do` line.
```ruby
config.ip2location_db_path = Rails.root.join('lib', 'assets', 'ip2location_rails', 'IP2LOCATION.BIN').to_s
```

## USAGE
1. Download IP2Location BIN database
    - IP2Location free LITE database at https://lite.ip2location.com
    - IP2Location commercial database at https://www.ip2location.com
2. Create a folder named as `ip2location_rails` in the `lib/assets` directory.
3. Unzip and copy the BIN file into `lib/assets/ip2location_rails` folder.
4. Rename the BIN file to **IP2LOCATION.BIN**.
5. Create a **TestController** using the below command line
```bash
bin/rails generate controller Test index --skip-routes
```
6. Open the *app/controllers/test_controller.rb* in any text editor.
7. Add the below lines into the controller file.
```ruby
require 'ip2location_rails'

class TestController < ApplicationController
  def index
    location_service = Ip2locationRails.new('8.8.8.8')
    @country_code = location_service.country_code
    @country_name = location_service.country_name
    @region = location_service.region
    @city = location_service.city
    @latitude = location_service.latitude
    @longitude = location_service.longitude
    @isp = location_service.isp
    @domain = location_service.domain
    @netspeed = location_service.netspeed
    @area_code = location_service.areacode
    @idd_code = location_service.iddcode
    @time_zone = location_service.timezone
    @zip_code = location_service.zipcode
    @weather_station_name = location_service.weatherstationname
    @weather_station_code = location_service.weatherstationcode
    @mcc= location_service.mcc
    @mnc = location_service.mnc
    @mobile_brand = location_service.mobilebrand
    @elevation = location_service.elevation
    @usage_type = location_service.usagetype
    @address_type = location_service.addresstype
    @category = location_service.category
    @district = location_service.district
    @asn = location_service.asn
    @as = location_service.as
  end
end
```
8. Open the *app/views/test/index.html.erb* in any text editor and add the below lines into it.
```
<p>Country Code: <%= @country_code %></p>
<p>Country Name: <%= @country_name %></p>
<p>Region Name: <%= @region %></p>
<p>City Name: <%= @city %></p>
<p>Latitude: <%= @latitude %></p>
<p>Longitude: <%= @longitude %></p>
<p>ISP Name: <%= @isp %></p>
<p>Domain Name: <%= @domain %></p>
<p>Net Speed: <%= @netspeed %></p>
<p>Area Code: <%= @area_code %></p>
<p>IDD Code: <%= @idd_code %></p>
<p>Time Zone: <%= @time_zone %></p>
<p>ZIP Code: <%= @zip_code %></p>
<p>Weather Station Code: <%= @weather_station_name %></p>
<p>Weather Station Name: <%= @weather_station_code %></p>
<p>MCC: <%= @mcc %></p>
<p>MNC: <%= @mnc %></p>
<p>Mobile Carrier: <%= @mobile_brand %></p>
<p>Elevation: <%= @elevation %></p>
<p>Usage Type: <%= @usage_type %></p>
<p>Address Type: <%= @address_type %></p>
<p>Category: <%= @category %></p>
<p>District: <%= @district %></p>
<p>ASN: <%= @asn %></p>
<p>AS: <%= @as %></p>
```
9. Add the following line into the *config/routes.rb* file after the `Rails.application.routes.draw do` line.
```ruby
get "/test", to: "test#index"
```
10. Restart your development server.
```bash
$ bin/rails server
```
11. Enter the URL <your domain>/test and run. You should see the information of **8.8.8.8** IP address.

## Dependencies
This library requires IP2Location BIN data file to function. You may download the BIN data file at
* IP2Location LITE BIN Data (Free): https://lite.ip2location.com
* IP2Location Commercial BIN Data (Comprehensive): https://www.ip2location.com

## IPv4 BIN vs IPv6 BIN
* Use the IPv4 BIN file if you just need to query IPv4 addresses.
* Use the IPv6 BIN file if you need to query BOTH IPv4 and IPv6 addresses.

## Support
Email: support@ip2location.com
URL: [https://www.ip2location.com](https://www.ip2location.com)
