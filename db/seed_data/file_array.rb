def create_file_array
  start = 2009
  array = []
  while start < 2018
    array.push("seed_data/#{start}.json")
    start +=1
  end
  print array
end

create_file_array