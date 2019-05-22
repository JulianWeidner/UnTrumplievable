require 'json'

files = ["2009.json",
         "2010.json",
         "2011.json", 
         "2012.json", 
         "2013.json", 
         "2014.json", 
         "2015.json", 
         "2016.json", 
         "2017.json"]

files.each do |f_path|
  file = File.open(f_path)
  json_data = JSON.load(file)

  print json_data.keys
end
