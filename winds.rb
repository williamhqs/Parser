require 'json'
f = File.open("winds.json","w")
winds_array = []
weather_array = []
weather_ar = []

weather_array << {id:"0",wind:"无持续风向",en:"No wind"}
weather_array << {id:"1",wind:"东北风",en:"Northeast"}
weather_array << {id:"2",wind:"东风",en:"East"}
weather_array << {id:"3",wind:"东南风",en:"Southeast"}
weather_array << {id:"4",wind:"南风",en:"South"}
weather_array << {id:"5",wind:"西南风",en:"Southwest"}
weather_array << {id:"6",wind:"西风",en:"West"}
weather_array << {id:"7",wind:"西北风",en:"Northwest"}
weather_array << {id:"8",wind:"北风",en:"North"}
weather_array << {id:"9",wind:"旋转风",en:"Whirl wind"}

winds_array << {wind_direction:weather_array}

weather_ar << {id:"0",wind_prower:"微风",en:"<10m/h"}
weather_ar << {id:"1",wind_prower:"3-4级",en:"10~17m/h"}
weather_ar << {id:"2",wind_prower:"4-5级",en:"17~25m/h"}
weather_ar << {id:"3",wind_prower:"5-6级",en:"25~34m/h"}
weather_ar << {id:"4",wind_prower:"6-7级",en:"34~43m/h"}
weather_ar << {id:"5",wind_prower:"7-8级",en:"43~54m/h"}
weather_ar << {id:"6",wind_prower:"8-9级",en:"54~65m/h"}
weather_ar << {id:"7",wind_prower:"9-10级",en:"65~77m/h"}
weather_ar << {id:"8",wind_prower:"10-11级",en:"77~89m/h"}
weather_ar << {id:"9",wind_prower:"11-12级",en:"89~102m/h"}
winds_array << {wind_powe_list:weather_ar}

f.write(JSON.pretty_generate(winds_array))
