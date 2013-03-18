class Education
  def initialize(xml)
    @name = xml.elements['name'].text
    @location = xml.elements['location'].text
    @degree = xml.elements['degree'].text
    @years = xml.elements['years'].text
    xml.elements['notes'].elements.each('note') do |note_xml|
      @notes << note_xml.text
    end
  end
  attr_accessor :name, :location, :degree, :years, :notes
end
