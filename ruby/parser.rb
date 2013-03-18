#!/usr/bin/env ruby

require 'pry'
require 'erb'
require './job.rb'
require './resume.rb'
require 'trollop'

opts = Trollop::options do
  opt :resume, "Set resume xml file", :short => 'r', :type => String, :default => 'resume.xml'
  opt :template, "Set template name", :short => 't', :type => String, :default => 'resume.tex.erb'
end

resume = Resume.new(opts[:resume])

# get the XML data as a string
filename = opts[:template]
erb = ERB.new(File.read(filename))
erb.filename = filename
print erb.result
