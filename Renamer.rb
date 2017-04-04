require 'pathname'
require 'fileutils'
folder = "/Volumes/The Potion/JW/Poetry/Charles Bukowski"
Dir.glob("#{folder}/**/*.mov").each do |f|
  john = folder.gsub(/.+Poetry./, "")
  name = File.absolute_path(f)
  File.rename(f, name + " by #{john}" + File.extname(f))
end
