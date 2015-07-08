File.open('myfile.txt', 'r') do |f|
  #content = f.readlines()
  #f.readlines().each
  #puts content
  f.each_line do |line|
    line = line.upcase if line.include?('bravo')
    puts line  
  end
end

File.open('myfile.txt', 'r+') do |f|
  f.write('Something something something dark side')
end
