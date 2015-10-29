
#encoding: utf-8 
require 'icalendar'
require 'json'
cal_file = File.open("2016中国节假日.ics","r:UTF-8")
cals= Icalendar.parse(cal_file)
cal = cals.first
f = File.open("holidays.json","w")
eventsArray = []
cal.events.each do |event| 
  # puts "summary: #{event.summary}"
  puts "start date-time: #{event.dtstart}"
  #puts "start date-time timezone: #{event.dtstart.ical_params['tzid']}"
  ev = {summary:event.summary,start_date_time:event.dtstart}
  eventsArray << ev
end
eventsArray = eventsArray.sort_by{|hsh| hsh[:start_date_time]}
f.write(JSON.pretty_generate(eventsArray))
