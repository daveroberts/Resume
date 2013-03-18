require 'rexml/document'
require './certification.rb'

class Resume
  attr_accessor :name, :email, :phone, :jobs, :certifications, :educations
  def initialize(filename)
    xml = REXML::Document.new(File.open(filename)).elements['resume']
    @name = xml.elements['name'].text
    @email = xml.elements['email'].text
    @phone = xml.elements['phone'].text
    @certifications = Array.new
    xml.elements['certifications/certification'].each do |ele|
      binding.pry
      @certifications << Certification.new(ele)
    end
    @jobs = Array.new
    xml.elements['jobs/job'].each do |ele|
      @jobs << Job.new(ele)
    end
    @educations = Array.new
    xml.elements['educations/education'].each do |ele|
      @educations << Education.new(ele)
    end
  end
end
