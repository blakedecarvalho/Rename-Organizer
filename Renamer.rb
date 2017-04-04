cd /Volumes/The\ Potion/JW/Poetry
irb
require 'pathname'
require 'fileutils'
names = Dir.entries(".")
i = 96
begin
  while i < 98
    folder = "/Volumes/The Potion/JW/Poetry/#{names[i]}"
    Dir.glob("#{folder}/**/*.mov").each do |f|
      john = folder.gsub(/.+Poetry./, "")
      name = File.absolute_path(f)
      File.rename(f, name + " by #{john}" + File.extname(f))
      print names[i]
    end
    i+=1
  end
rescue
  i+=1
  retry
end
