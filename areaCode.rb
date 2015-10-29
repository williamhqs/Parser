# AREAID,NAMEEN,NAMECN,DISTRICTEN,DISTRICTCN,PROVEN,PROVCN,NATIONEN,NATIONCN
# 101010100,beijing,北京,beijing,北京,beijing,北京,china,中国
# 101010200,haidian,海淀,beijing,北京,beijing,北京,china,中国
# 101010300,chaoyang,朝阳,beijing,北京,beijing,北京,china,中国

require 'json'
require 'csv'
# CSV.open("areaidv.csv",'r:UTF-8') do |file|
#   #json = File.open("#{file[0]}.json","w+")
#   puts file[1]
# end
codeArray = []
json = File.open("areas.json","w+")
CSV.foreach("areaidv.csv",'r:UTF-8') do |row|
  #puts "-----#{row[0]}--#{row[1]}---#{row[2]}---#{row[3]}---#{row[4]}---#{row[5]}---#{row[6]}"
  codeArray << {areaid:row[0],namecn:row[2],districtcn:row[4],provcn:row[6]}
end
json.write(JSON.pretty_generate(codeArray))

