cd /Volumes/The\ Potion/JW/Poetry
irb
require 'pathname'
require 'fileutils'
names = Dir.entries(".")
i = 2
begin
  while i < 110
    folder = "/Volumes/The Potion/JW/Poetry/#{names[i]}"
    Dir.glob("#{folder}/**/*.mov").each do |f|
      john = folder.gsub(/.+Poetry./, "")
      name = File.dirname(f)
      newspot = File.dirname(f) + " by #{john}" + File.extname(f)
      File.rename(f, newspot)
      FileUtils.mv(newspot, name)
    end
    i+=1
  end
rescue
  i+=1
  retry
end
