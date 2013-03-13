require 'rexml/document'

class Resume
  attr_accessor :jobs
  def initialize(filename)
    xml = REXML::Document.new(File.open(filename))
    @jobs = Array.new
    xml.elements.each('resume/job') do |ele|
      @jobs << Job.new(ele)
    end
  end
end
