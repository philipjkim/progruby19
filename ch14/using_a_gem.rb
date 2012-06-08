require 'builder'
xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)
xml.person(type: "programmer") do
  xml.name do
    xml.first "Soo Philip"
    xml.last "Kim"
  end
  xml.location "Jeju"
  xml.pregerence("ruby")
end
