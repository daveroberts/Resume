class Certification
  def initialize(xml)
    @name = xml.elements['name'].text
    @description = xml.elements['description'].text
  end
  attr_accessor :name, :description
end
