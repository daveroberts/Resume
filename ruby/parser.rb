require 'pry'
require 'erb'
require './job.rb'
require './resume.rb'

resume = Resume.new('resume.xml')

def tf(input)
  str = input
  str = str.gsub("&"){'\&'}
  str = str.gsub(/_(.*?)_/,'{\color{blue} \1}')
  str = str.gsub("LaTeX", '\\LaTeX')
  str
end

# get the XML data as a string
filename = 'resume.tex.erb'
erb = ERB.new(File.read(filename))
erb.filename = filename
print erb.result
