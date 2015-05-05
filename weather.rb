# Script to get five day weather forecast

require 'yahoo_weatherman'

client = Weatherman::Client.new

def get_forecast(place)
  forecast = place.forecasts
  forecast.each do |f|
    puts "#{get_date(f['date'])}'s forecast is #{f['text'].downcase}, with a high of #{celsius_to_fahrenheit(f['high'])} and a low of #{celsius_to_fahrenheit(f['low'])}."
  end
  return
end

def get_date(date)
  current_date = Time.now.strftime("%w").to_i
  forecast_date = date.strftime("%w").to_i
  if current_date == forecast_date
    print "Today"
  elsif current_date + 1 == forecast_date
    print "Tomorrow"
  else
    print date.strftime("%A")
  end
end

def celsius_to_fahrenheit(i)
  (i * 1.8 + 32).round
end

print "Where are you located? "
location = gets.chomp
location = client.lookup_by_location(location)

puts get_forecast(location)