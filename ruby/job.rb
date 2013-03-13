class Job
  def initialize(xml)
    @company = xml.elements['company'].text
    @location = xml.elements['location'].text
    @title = xml.elements['title'].text
    @start_date = xml.elements['start_date'].text
    @end_date = xml.elements['end_date'].text
    @descriptions = Array.new
    xml.elements['descriptions'].elements.each('description') do |desc_xml|
      @descriptions << desc_xml.text
    end
  end
  attr_accessor :company, :location, :title, :start_date, :end_date, :descriptions
end
