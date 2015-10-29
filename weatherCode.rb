require 'json'
f = File.open("weatherCode.json","w")
weather_array = []
weather_array << {id:"00",weather:"晴",en:"Sunny"}
weather_array << {id:"01",weather:"多云",en:"Cloudy"}
weather_array << {id:"02",weather:"阴",en:"Overcast"}
weather_array << {id:"03",weather:"阵雨",en:"Shower"}
weather_array << {id:"04",weather:"雷阵雨",en:"Thundershower"}
weather_array << {id:"05",weather:"雷阵雨伴有冰雹",en:"Thundershower with hail"}
weather_array << {id:"06",weather:"雨夹雪",en:"Sleet"}
weather_array << {id:"07",weather:"小雨",en:"Light rain"}
weather_array << {id:"08",weather:"中雨",en:"Moderate rain"}
weather_array << {id:"09",weather:"大雨",en:"Heavy rain"}
weather_array << {id:"10",weather:"暴雨",en:"Storm"}
weather_array << {id:"11",weather:"大暴雨",en:"Heavy storm"}
weather_array << {id:"12",weather:"特大暴雨",en:"Severe storm"}
weather_array << {id:"13",weather:"阵雪",en:"Snow flurry"}
weather_array << {id:"14",weather:"小雪",en:"Light snow"}
weather_array << {id:"15",weather:"中雪",en:"Moderate snow"}
weather_array << {id:"16",weather:"大雪",en:"Heavy snow"}
weather_array << {id:"17",weather:"暴雪",en:"Snowstorm"}
weather_array << {id:"18",weather:"雾",en:"Foggy"}
weather_array << {id:"19",weather:"冻雨",en:"Ice rain"}
weather_array << {id:"20",weather:"沙尘暴",en:"Duststorm"}
weather_array << {id:"21",weather:"小到中雨",en:"Light to moderate rain"}
weather_array << {id:"22",weather:"中到大雨",en:"Moderate to heave rain"}
weather_array << {id:"23",weather:"大到暴雨",en:"Heay rain to storm"}
weather_array << {id:"24",weather:"暴雨到大暴雨",en:"Storm to heave storm"}
weather_array << {id:"25",weather:"大暴雨到特大暴雨",en:"Heavy to server storm"}
weather_array << {id:"26",weather:"小到中雪",en:"Light to moderate snow"}
weather_array << {id:"27",weather:"中到大雪",en:"Moderate snow to heavy snow"}
weather_array << {id:"28",weather:"大到暴雪",en:"Heave snow to snowstrom"}
weather_array << {id:"29",weather:"浮尘",en:"Dust"}
weather_array << {id:"30",weather:"扬沙",en:"Sand"}
weather_array << {id:"31",weather:"强沙尘暴",en:"Sandstrom"}
weather_array << {id:"53",weather:"霾",en:"Haze"}
weather_array << {id:"99",weather:"无",en:"Unknow"}
f.write(JSON.pretty_generate(weather_array))
# ￼

